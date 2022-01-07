
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exec_domain {struct exec_domain* next; } ;


 int EINVAL ;
 struct exec_domain* exec_domains ;
 int exec_domains_lock ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int
unregister_exec_domain(struct exec_domain *ep)
{
 struct exec_domain **epp;

 epp = &exec_domains;
 write_lock(&exec_domains_lock);
 for (epp = &exec_domains; *epp; epp = &(*epp)->next) {
  if (ep == *epp)
   goto unregister;
 }
 write_unlock(&exec_domains_lock);
 return -EINVAL;

unregister:
 *epp = ep->next;
 ep->next = ((void*)0);
 write_unlock(&exec_domains_lock);
 return 0;
}
