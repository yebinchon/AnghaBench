
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_domain_attr {int dummy; } ;
struct cpumask {int dummy; } ;



__attribute__((used)) static int generate_sched_domains(struct cpumask **domains,
   struct sched_domain_attr **attributes)
{
 *domains = ((void*)0);
 return 1;
}
