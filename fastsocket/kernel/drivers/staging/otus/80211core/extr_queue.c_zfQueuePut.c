
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u32_t ;
typedef int u16_t ;
struct zsQueue {int dummy; } ;


 int zfQueuePutNcs (int *,struct zsQueue*,int *,int ) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_leave_critical_section (int *) ;

u16_t zfQueuePut(zdev_t* dev, struct zsQueue* q, zbuf_t* buf, u32_t tick)
{
    u16_t ret;
    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);

    ret = zfQueuePutNcs(dev, q, buf, tick);

    zmw_leave_critical_section(dev);

    return ret;
}
