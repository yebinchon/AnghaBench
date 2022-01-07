
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_service {int refcnt; } ;
struct ip_vs_dest {struct ip_vs_service* svc; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree (struct ip_vs_service*) ;

__attribute__((used)) static inline void
__ip_vs_unbind_svc(struct ip_vs_dest *dest)
{
 struct ip_vs_service *svc = dest->svc;

 dest->svc = ((void*)0);
 if (atomic_dec_and_test(&svc->refcnt))
  kfree(svc);
}
