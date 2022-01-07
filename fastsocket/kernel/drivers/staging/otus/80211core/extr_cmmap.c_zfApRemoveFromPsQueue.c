
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u16_t ;
struct TYPE_3__ {int uniTail; int * uniArray; } ;
struct TYPE_4__ {TYPE_1__ ap; } ;


 int ZM_UNI_ARRAY_SIZE ;
 TYPE_2__* wd ;
 int zmw_buf_readh (int *,int ,int) ;
 int zmw_get_wlan_dev (int *) ;

u8_t zfApRemoveFromPsQueue(zdev_t* dev, u16_t id, u16_t* addr)
{
    u16_t dst[3];
    u16_t nid;
    u8_t moreData = 0;
    zmw_get_wlan_dev(dev);

    wd->ap.uniTail = (wd->ap.uniTail-1) & (ZM_UNI_ARRAY_SIZE-1);
    while (id != wd->ap.uniTail)
    {
        nid = (id + 1) & (ZM_UNI_ARRAY_SIZE - 1);
        wd->ap.uniArray[id] = wd->ap.uniArray[nid];


        dst[0] = zmw_buf_readh(dev, wd->ap.uniArray[id], 0);
        dst[1] = zmw_buf_readh(dev, wd->ap.uniArray[id], 2);
        dst[2] = zmw_buf_readh(dev, wd->ap.uniArray[id], 4);
        if ((addr[0] == dst[0]) && (addr[1] == dst[1])
                && (addr[2] == dst[2]))
        {
            moreData = 0x20;
        }

        id = nid;
    }
    return moreData;
}
