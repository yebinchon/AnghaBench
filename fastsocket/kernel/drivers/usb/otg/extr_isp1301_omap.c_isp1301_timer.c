
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WORK_TIMER ;
 int isp1301_defer_work (void*,int ) ;

__attribute__((used)) static void isp1301_timer(unsigned long _isp)
{
 isp1301_defer_work((void *)_isp, WORK_TIMER);
}
