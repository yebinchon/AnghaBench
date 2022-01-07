
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
struct TYPE_2__ {int queueFlushed; } ;


 TYPE_1__* wd ;
 int * zfGetVmmq (int *) ;
 int * zfGetVtxq (int *,int) ;
 int zfwBufFree (int *,int *,int ) ;
 int zm_debug_msg0 (char*) ;
 int zm_debug_msg1 (char*,int) ;
 int zmw_get_wlan_dev (int *) ;

void zfFlushVtxq(zdev_t* dev)
{
    zbuf_t* buf;
    u8_t i;
    zmw_get_wlan_dev(dev);


    while ((buf = zfGetVmmq(dev)) != 0)
    {
        zfwBufFree(dev, buf, 0);
        zm_debug_msg0("zfFlushVtxq: [Vmmq]");
        wd->queueFlushed |= 0x10;
    }


    for (i=0; i<4; i++)
    {
        while ((buf = zfGetVtxq(dev, i)) != 0)
        {
            zfwBufFree(dev, buf, 0);
            zm_debug_msg1("zfFlushVtxq: [zfGetVtxq]- ", i);
            wd->queueFlushed |= (1<<i);
        }
    }
}
