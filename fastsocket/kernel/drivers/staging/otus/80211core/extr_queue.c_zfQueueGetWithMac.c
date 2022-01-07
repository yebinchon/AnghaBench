
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef size_t u16_t ;
struct zsQueue {size_t head; size_t tail; size_t sizeMask; TYPE_1__* cell; } ;
struct TYPE_2__ {int * buf; int tick; } ;


 scalar_t__ zfCompareDstwithBuf (int *,int *,int*) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_leave_critical_section (int *) ;

zbuf_t* zfQueueGetWithMac(zdev_t* dev, struct zsQueue* q, u8_t* addr, u8_t* mb)
{
    zbuf_t* buf;
    zbuf_t* retBuf = ((void*)0);
    u16_t index, next;
    zmw_declare_for_critical_section();

    *mb = 0;

    zmw_enter_critical_section(dev);

    index = q->head;

    while (1)
    {
        if (index != q->tail)
        {
            buf = q->cell[index].buf;


            if (zfCompareDstwithBuf(dev, buf, addr) == 0)
            {
                retBuf = buf;

                while ((next =((index+1)&q->sizeMask)) != q->tail)
                {
                    q->cell[index].buf = q->cell[next].buf;
                    q->cell[index].tick = q->cell[next].tick;

                    if ((*mb == 0) && (zfCompareDstwithBuf(dev,
                            q->cell[next].buf, addr) == 0))
                    {
                        *mb = 1;
                    }

                    index = next;
                }
                q->tail = (q->tail-1) & q->sizeMask;

                zmw_leave_critical_section(dev);
                return retBuf;
            }
            index = (index + 1) & q->sizeMask;
        }
        else
        {
            break;
        }
    }

    zmw_leave_critical_section(dev);

    return retBuf;

}
