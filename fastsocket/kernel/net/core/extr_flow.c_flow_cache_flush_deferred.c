
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flow_cache_flush_work ;
 int schedule_work (int *) ;

void flow_cache_flush_deferred(void)
{
 schedule_work(&flow_cache_flush_work);
}
