
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int raw_smp_processor_id () ;
 unsigned long round_jiffies_common (unsigned long,int ,int) ;

unsigned long round_jiffies(unsigned long j)
{
 return round_jiffies_common(j, raw_smp_processor_id(), 0);
}
