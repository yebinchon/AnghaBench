
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int drain_local_stock ;
 int memcg_drain_count ;
 int schedule_on_each_cpu (int ) ;

__attribute__((used)) static void drain_all_stock_sync(void)
{

 atomic_inc(&memcg_drain_count);
 schedule_on_each_cpu(drain_local_stock);
 atomic_dec(&memcg_drain_count);
}
