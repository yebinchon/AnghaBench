
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_sh_bucket {int dummy; } ;
struct ip_vs_service {struct ip_vs_sh_bucket* sched_data; } ;


 int ip_vs_sh_assign (struct ip_vs_sh_bucket*,struct ip_vs_service*) ;
 int ip_vs_sh_flush (struct ip_vs_sh_bucket*) ;

__attribute__((used)) static int ip_vs_sh_update_svc(struct ip_vs_service *svc)
{
 struct ip_vs_sh_bucket *tbl = svc->sched_data;


 ip_vs_sh_flush(tbl);


 ip_vs_sh_assign(tbl, svc);

 return 0;
}
