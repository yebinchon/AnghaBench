
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto_ops {struct tcf_proto_ops* next; } ;


 int ENOENT ;
 int cls_mod_lock ;
 struct tcf_proto_ops* tcf_proto_base ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int unregister_tcf_proto_ops(struct tcf_proto_ops *ops)
{
 struct tcf_proto_ops *t, **tp;
 int rc = -ENOENT;

 write_lock(&cls_mod_lock);
 for (tp = &tcf_proto_base; (t=*tp) != ((void*)0); tp = &t->next)
  if (t == ops)
   break;

 if (!t)
  goto out;
 *tp = t->next;
 rc = 0;
out:
 write_unlock(&cls_mod_lock);
 return rc;
}
