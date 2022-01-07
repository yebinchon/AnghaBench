
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int class; } ;
struct tcindex_filter_result {int exts; TYPE_1__ res; } ;
struct tcindex_filter {struct tcindex_filter* next; struct tcindex_filter_result result; } ;
struct tcindex_data {int hash; struct tcindex_filter** h; scalar_t__ perfect; } ;
struct tcf_proto {int dummy; } ;


 int ENOENT ;
 struct tcindex_data* PRIV (struct tcf_proto*) ;
 int kfree (struct tcindex_filter*) ;
 int pr_debug (char*,struct tcf_proto*,unsigned long,struct tcindex_data*,struct tcindex_filter*) ;
 int tcf_exts_destroy (struct tcf_proto*,int *) ;
 int tcf_tree_lock (struct tcf_proto*) ;
 int tcf_tree_unlock (struct tcf_proto*) ;
 int tcf_unbind_filter (struct tcf_proto*,TYPE_1__*) ;

__attribute__((used)) static int
__tcindex_delete(struct tcf_proto *tp, unsigned long arg, int lock)
{
 struct tcindex_data *p = PRIV(tp);
 struct tcindex_filter_result *r = (struct tcindex_filter_result *) arg;
 struct tcindex_filter *f = ((void*)0);

 pr_debug("tcindex_delete(tp %p,arg 0x%lx),p %p,f %p\n", tp, arg, p, f);
 if (p->perfect) {
  if (!r->res.class)
   return -ENOENT;
 } else {
  int i;
  struct tcindex_filter **walk = ((void*)0);

  for (i = 0; i < p->hash; i++)
   for (walk = p->h+i; *walk; walk = &(*walk)->next)
    if (&(*walk)->result == r)
     goto found;
  return -ENOENT;

found:
  f = *walk;
  if (lock)
   tcf_tree_lock(tp);
  *walk = f->next;
  if (lock)
   tcf_tree_unlock(tp);
 }
 tcf_unbind_filter(tp, &r->res);
 tcf_exts_destroy(tp, &r->exts);
 kfree(f);
 return 0;
}
