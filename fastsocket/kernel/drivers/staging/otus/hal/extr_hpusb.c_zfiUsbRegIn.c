
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u32_t ;
typedef int u16_t ;
struct zsHpPriv {int retransmissionEvent; } ;
struct TYPE_2__ {struct zsHpPriv* hpPrivate; int (* zfcbHwWatchDogNotify ) (int *) ;} ;


 int DbgPrint (char*,int,...) ;
 int ZM_LV_3 ;



 int stub1 (int *) ;
 TYPE_1__* wd ;
 int zfBeaconCfgInterrupt (int *,int*) ;
 int zfCoreEvent (int *,int,int*) ;
 int zfEndOfAtimWindowInterrupt (int *) ;
 int zfIdlRsp (int *,int*,int) ;
 int zfwDbgProgrameFlashChkDone (int *) ;
 int zm_debug_msg0 (char*) ;
 int zm_msg0_mm (int ,char*) ;
 int zmw_get_wlan_dev (int *) ;

void zfiUsbRegIn(zdev_t* dev, u32_t* rsp, u16_t rspLen)
{

    u8_t type;
    u8_t *u8rsp;
    u16_t status;
    u32_t bitmap;
    zmw_get_wlan_dev(dev);

    zm_msg0_mm(ZM_LV_3, "zfiUsbRegIn()");

    u8rsp = (u8_t *)rsp;


    type = *(u8rsp+1);
    u8rsp = u8rsp+4;



    if ((type & 0xC0) == 0xC0)
    {
        if (type == 0xC0)
        {
            zfCoreEvent(dev, 0, u8rsp);

        }
        else if (type == 0xC1)
        {
            status = (u16_t)(rsp[3] >> 16);


            rsp[8] = rsp[8] >> 2 | (rsp[9] & 0x1) << 6;
            switch (status)
            {
            case 130 :
                zfCoreEvent(dev, 1, u8rsp);
                break;
            case 128 :
                zfCoreEvent(dev, 2, u8rsp);
                break;
            case 129 :
                zfCoreEvent(dev, 3, u8rsp);
                break;
            }
        }
        else if (type == 0xC2)
        {
            zfBeaconCfgInterrupt(dev, u8rsp);
        }
        else if (type == 0xC3)
        {
            zfEndOfAtimWindowInterrupt(dev);
        }
        else if (type == 0xC4)
        {
            bitmap = (rsp[1] >> 16) + ((rsp[2] & 0xFFFF) << 16 );

        }
        else if (type == 0xC5)
        {
            u16_t i;






            for (i=1; i<(rspLen/4); i++) {
                u8rsp = (u8_t *)(rsp+i);

                zfCoreEvent(dev, 4, u8rsp);
            }
        }
        else if (type == 0xC6)
        {
            zm_debug_msg0("\n\n WatchDog interrupt!!! : 0xC6 \n\n");
            if (wd->zfcbHwWatchDogNotify != ((void*)0))
            {
                wd->zfcbHwWatchDogNotify(dev);
            }
        }
        else if (type == 0xC8)
        {



            zfwDbgProgrameFlashChkDone(dev);
        }
        else if (type == 0xC9)
        {
            struct zsHpPriv* hpPriv=wd->hpPrivate;

            zm_debug_msg0("##### Tx retransmission 5 times event #####");


            hpPriv->retransmissionEvent = 1;
        }
    }
    else
    {
        zfIdlRsp(dev, rsp, rspLen);
    }
}
