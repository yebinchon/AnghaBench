
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_wrr_mark {scalar_t__ mw; scalar_t__ cw; int di; int * cl; } ;
struct ip_vs_service {int destinations; struct ip_vs_wrr_mark* sched_data; } ;


 int ip_vs_wrr_gcd_weight (struct ip_vs_service*) ;
 scalar_t__ ip_vs_wrr_max_weight (struct ip_vs_service*) ;

__attribute__((used)) static int ip_vs_wrr_update_svc(struct ip_vs_service *svc)
{
 struct ip_vs_wrr_mark *mark = svc->sched_data;

 mark->cl = &svc->destinations;
 mark->mw = ip_vs_wrr_max_weight(svc);
 mark->di = ip_vs_wrr_gcd_weight(svc);
 if (mark->cw > mark->mw)
  mark->cw = 0;
 return 0;
}
