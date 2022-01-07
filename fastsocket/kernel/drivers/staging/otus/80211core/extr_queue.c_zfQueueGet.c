
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
struct zsQueue {size_t head; size_t tail; int sizeMask; TYPE_1__* cell; } ;
struct TYPE_2__ {int * buf; } ;


 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_leave_critical_section (int *) ;

zbuf_t* zfQueueGet(zdev_t* dev, struct zsQueue* q)
{
    zbuf_t* buf = ((void*)0);
    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);

    if (q->head != q->tail)
    {
        buf = q->cell[q->head].buf;
        q->head = (q->head+1) & q->sizeMask;
    }

    zmw_leave_critical_section(dev);

    return buf;
}
