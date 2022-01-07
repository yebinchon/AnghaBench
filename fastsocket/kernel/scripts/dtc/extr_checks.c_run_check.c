
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int dummy; } ;
struct check {int inprogress; scalar_t__ status; int num_prereqs; scalar_t__ level; int (* tree_fn ) (struct check*,struct node*) ;scalar_t__ prop_fn; scalar_t__ node_fn; int name; struct check** prereq; } ;


 scalar_t__ ERROR ;
 scalar_t__ PASSED ;
 scalar_t__ PREREQ ;
 int TRACE (struct check*,char*,scalar_t__) ;
 scalar_t__ UNCHECKED ;
 int assert (int) ;
 int check_msg (struct check*,char*,int ) ;
 int check_nodes_props (struct check*,struct node*,struct node*) ;
 int stub1 (struct check*,struct node*) ;

__attribute__((used)) static int run_check(struct check *c, struct node *dt)
{
 int error = 0;
 int i;

 assert(!c->inprogress);

 if (c->status != UNCHECKED)
  goto out;

 c->inprogress = 1;

 for (i = 0; i < c->num_prereqs; i++) {
  struct check *prq = c->prereq[i];
  error |= run_check(prq, dt);
  if (prq->status != PASSED) {
   c->status = PREREQ;
   check_msg(c, "Failed prerequisite '%s'",
      c->prereq[i]->name);
  }
 }

 if (c->status != UNCHECKED)
  goto out;

 if (c->node_fn || c->prop_fn)
  check_nodes_props(c, dt, dt);

 if (c->tree_fn)
  c->tree_fn(c, dt);
 if (c->status == UNCHECKED)
  c->status = PASSED;

 TRACE(c, "\tCompleted, status %d", c->status);

out:
 c->inprogress = 0;
 if ((c->status != PASSED) && (c->level == ERROR))
  error = 1;
 return error;
}
