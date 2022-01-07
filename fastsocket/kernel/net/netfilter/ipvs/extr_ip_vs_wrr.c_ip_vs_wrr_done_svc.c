
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_service {int sched_data; } ;


 int kfree (int ) ;

__attribute__((used)) static int ip_vs_wrr_done_svc(struct ip_vs_service *svc)
{



 kfree(svc->sched_data);

 return 0;
}
