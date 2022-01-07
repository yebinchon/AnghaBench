
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int dummy; } ;
struct dt_info {struct node* dt; } ;
struct check {int inprogress; scalar_t__ status; int num_prereqs; scalar_t__ error; int name; struct check** prereq; } ;


 scalar_t__ PASSED ;
 scalar_t__ PREREQ ;
 int TRACE (struct check*,char*,scalar_t__) ;
 scalar_t__ UNCHECKED ;
 int assert (int) ;
 int check_msg (struct check*,struct dt_info*,char*,int ) ;
 int check_nodes_props (struct check*,struct dt_info*,struct node*) ;

__attribute__((used)) static bool run_check(struct check *c, struct dt_info *dti)
{
 struct node *dt = dti->dt;
 bool error = 0;
 int i;

 assert(!c->inprogress);

 if (c->status != UNCHECKED)
  goto out;

 c->inprogress = 1;

 for (i = 0; i < c->num_prereqs; i++) {
  struct check *prq = c->prereq[i];
  error = error || run_check(prq, dti);
  if (prq->status != PASSED) {
   c->status = PREREQ;
   check_msg(c, dti, "Failed prerequisite '%s'",
      c->prereq[i]->name);
  }
 }

 if (c->status != UNCHECKED)
  goto out;

 check_nodes_props(c, dti, dt);

 if (c->status == UNCHECKED)
  c->status = PASSED;

 TRACE(c, "\tCompleted, status %d", c->status);

out:
 c->inprogress = 0;
 if ((c->status != PASSED) && (c->error))
  error = 1;
 return error;
}
