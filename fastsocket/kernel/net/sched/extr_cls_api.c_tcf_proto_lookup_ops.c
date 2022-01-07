
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto_ops {int owner; int kind; struct tcf_proto_ops* next; } ;
struct nlattr {int dummy; } ;


 int cls_mod_lock ;
 scalar_t__ nla_strcmp (struct nlattr*,int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 struct tcf_proto_ops* tcf_proto_base ;
 int try_module_get (int ) ;

__attribute__((used)) static struct tcf_proto_ops *tcf_proto_lookup_ops(struct nlattr *kind)
{
 struct tcf_proto_ops *t = ((void*)0);

 if (kind) {
  read_lock(&cls_mod_lock);
  for (t = tcf_proto_base; t; t = t->next) {
   if (nla_strcmp(kind, t->kind) == 0) {
    if (!try_module_get(t->owner))
     t = ((void*)0);
    break;
   }
  }
  read_unlock(&cls_mod_lock);
 }
 return t;
}
