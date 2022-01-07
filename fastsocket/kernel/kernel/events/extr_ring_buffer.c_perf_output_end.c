
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_output_handle {int dummy; } ;


 int perf_output_put_handle (struct perf_output_handle*) ;
 int rcu_read_unlock () ;

void perf_output_end(struct perf_output_handle *handle)
{
 perf_output_put_handle(handle);
 rcu_read_unlock();
}
