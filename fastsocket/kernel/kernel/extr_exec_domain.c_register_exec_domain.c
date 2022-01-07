
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exec_domain {struct exec_domain* next; } ;


 int EBUSY ;
 int EINVAL ;
 struct exec_domain* exec_domains ;
 int exec_domains_lock ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int
register_exec_domain(struct exec_domain *ep)
{
 struct exec_domain *tmp;
 int err = -EBUSY;

 if (ep == ((void*)0))
  return -EINVAL;

 if (ep->next != ((void*)0))
  return -EBUSY;

 write_lock(&exec_domains_lock);
 for (tmp = exec_domains; tmp; tmp = tmp->next) {
  if (tmp == ep)
   goto out;
 }

 ep->next = exec_domains;
 exec_domains = ep;
 err = 0;

out:
 write_unlock(&exec_domains_lock);
 return (err);
}
