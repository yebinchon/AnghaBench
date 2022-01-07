
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_service {int destinations; int * sched_data; } ;



__attribute__((used)) static int ip_vs_rr_update_svc(struct ip_vs_service *svc)
{
 svc->sched_data = &svc->destinations;
 return 0;
}
