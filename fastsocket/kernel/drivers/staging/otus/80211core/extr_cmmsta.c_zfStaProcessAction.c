
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;
struct TYPE_3__ {int DFSEnable; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;



 TYPE_2__* wd ;
 int zfAggBlockAckActionFrame (int *,int *) ;
 int zfStaUpdateDot11HDFS (int *,int *) ;
 int zm_debug_msg1 (char*,int) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_rx_buf_readb (int *,int *,int) ;

u16_t zfStaProcessAction(zdev_t* dev, zbuf_t* buf)
{
    u8_t category, actionDetails;
    zmw_get_wlan_dev(dev);

    category = zmw_rx_buf_readb(dev, buf, 24);
    actionDetails = zmw_rx_buf_readb(dev, buf, 25);
    switch (category)
    {
        case 0:
         switch(actionDetails)
         {
          case 0:
           break;
          case 1:

           break;
          case 2:


           break;
          case 3:


           break;
          case 4:
                    if (wd->sta.DFSEnable)
                        zfStaUpdateDot11HDFS(dev, buf);
           break;
          default:
           zm_debug_msg1("Action Frame contain not support action field ", actionDetails);
           break;
         }
         break;
        case 128:
            zfAggBlockAckActionFrame(dev, buf);
            break;
        case 17:
         break;
    }

    return 0;
}
