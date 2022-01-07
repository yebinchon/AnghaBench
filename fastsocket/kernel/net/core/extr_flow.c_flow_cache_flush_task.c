
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int flow_cache_flush () ;

__attribute__((used)) static void flow_cache_flush_task(struct work_struct *work)
{
 flow_cache_flush();
}
