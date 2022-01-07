
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcf_proto {int dummy; } ;
struct TYPE_4__ {int nmatches; } ;
struct tcf_ematch_tree {void* matches; TYPE_2__ hdr; } ;
struct tcf_ematch {TYPE_1__* ops; scalar_t__ data; } ;
struct TYPE_3__ {int owner; int (* destroy ) (struct tcf_proto*,struct tcf_ematch*) ;} ;


 int kfree (void*) ;
 int module_put (int ) ;
 int stub1 (struct tcf_proto*,struct tcf_ematch*) ;
 struct tcf_ematch* tcf_em_get_match (struct tcf_ematch_tree*,int) ;
 int tcf_em_is_simple (struct tcf_ematch*) ;

void tcf_em_tree_destroy(struct tcf_proto *tp, struct tcf_ematch_tree *tree)
{
 int i;

 if (tree->matches == ((void*)0))
  return;

 for (i = 0; i < tree->hdr.nmatches; i++) {
  struct tcf_ematch *em = tcf_em_get_match(tree, i);

  if (em->ops) {
   if (em->ops->destroy)
    em->ops->destroy(tp, em);
   else if (!tcf_em_is_simple(em))
    kfree((void *) em->data);
   module_put(em->ops->owner);
  }
 }

 tree->hdr.nmatches = 0;
 kfree(tree->matches);
 tree->matches = ((void*)0);
}
