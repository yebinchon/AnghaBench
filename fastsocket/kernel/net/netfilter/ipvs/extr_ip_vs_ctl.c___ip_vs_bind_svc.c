
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_service {int refcnt; } ;
struct ip_vs_dest {struct ip_vs_service* svc; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void
__ip_vs_bind_svc(struct ip_vs_dest *dest, struct ip_vs_service *svc)
{
 atomic_inc(&svc->refcnt);
 dest->svc = svc;
}
