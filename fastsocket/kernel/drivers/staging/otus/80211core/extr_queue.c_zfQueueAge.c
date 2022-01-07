
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u32_t ;
struct zsQueue {size_t head; size_t tail; int sizeMask; TYPE_1__* cell; } ;
struct TYPE_2__ {int tick; int * buf; } ;


 int ZM_LV_0 ;
 int ZM_MS_PER_TICK ;
 int zfwBufFree (int *,int *,int ) ;
 int zm_msg0_mm (int ,char*) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfQueueAge(zdev_t* dev, struct zsQueue* q, u32_t tick, u32_t msAge)
{
    zbuf_t* buf;
    u32_t buftick;
    zmw_declare_for_critical_section();

    while (1)
    {
        buf = ((void*)0);
        zmw_enter_critical_section(dev);

        if (q->head != q->tail)
        {
            buftick = q->cell[q->head].tick;
            if (((tick - buftick)*ZM_MS_PER_TICK) > msAge)
            {
                buf = q->cell[q->head].buf;
                q->head = (q->head+1) & q->sizeMask;
            }
        }

        zmw_leave_critical_section(dev);

        if (buf != ((void*)0))
        {
            zm_msg0_mm(ZM_LV_0, "Age frame in queue!");
            zfwBufFree(dev, buf, 0);
        }
        else
        {
            break;
        }
    }
    return;
}
