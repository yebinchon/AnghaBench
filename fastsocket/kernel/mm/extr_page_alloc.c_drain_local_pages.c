
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int drain_pages (int ) ;
 int smp_processor_id () ;

void drain_local_pages(void *arg)
{
 drain_pages(smp_processor_id());
}
