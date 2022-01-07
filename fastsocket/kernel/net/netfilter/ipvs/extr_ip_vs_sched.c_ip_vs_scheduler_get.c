
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_scheduler {int dummy; } ;


 struct ip_vs_scheduler* ip_vs_sched_getbyname (char const*) ;
 int request_module (char*,char const*) ;

struct ip_vs_scheduler *ip_vs_scheduler_get(const char *sched_name)
{
 struct ip_vs_scheduler *sched;




 sched = ip_vs_sched_getbyname(sched_name);




 if (sched == ((void*)0)) {
  request_module("ip_vs_%s", sched_name);
  sched = ip_vs_sched_getbyname(sched_name);
 }

 return sched;
}
