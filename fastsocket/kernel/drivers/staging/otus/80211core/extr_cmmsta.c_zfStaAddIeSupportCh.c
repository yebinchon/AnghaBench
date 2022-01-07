
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef size_t u8_t ;
typedef int u16_t ;
struct TYPE_5__ {size_t allowChannelCnt; TYPE_1__* allowChannel; } ;
struct TYPE_6__ {TYPE_2__ regulationTable; } ;
struct TYPE_4__ {int channel; } ;


 size_t ZM_WLAN_EID_SUPPORTED_CHANNELS ;
 TYPE_3__* wd ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;
 int zmw_tx_buf_writeb (int *,int *,int ,size_t) ;
 int zmw_tx_buf_writeh (int *,int *,int ,int) ;

u16_t zfStaAddIeSupportCh(zdev_t* dev, zbuf_t* buf, u16_t offset)
{

    u8_t i;
    u16_t count_24G = 0;
    u16_t count_5G = 0;
    u16_t channelNum;
    u8_t length;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();
    zmw_enter_critical_section(dev);

    for (i = 0; i < wd->regulationTable.allowChannelCnt; i++)
    {
        if (wd->regulationTable.allowChannel[i].channel < 3000)
        {
            count_24G++;
        }
        else
        {
            count_5G++;
        }
    }

    length = (u8_t)(count_5G * 2 + 2);


    zmw_tx_buf_writeb(dev, buf, offset++, ZM_WLAN_EID_SUPPORTED_CHANNELS );


    zmw_tx_buf_writeb(dev, buf, offset++, length);



    zmw_tx_buf_writeh(dev, buf, offset++, 1);

    zmw_tx_buf_writeh(dev, buf, offset++, count_24G);

    for (i = 0; i < wd->regulationTable.allowChannelCnt ; i++)
    {
        if (wd->regulationTable.allowChannel[i].channel > 4000 && wd->regulationTable.allowChannel[i].channel < 5000)
        {
            channelNum = (wd->regulationTable.allowChannel[i].channel-4000)/5;

            zmw_tx_buf_writeh(dev, buf, offset++, channelNum);

            zmw_tx_buf_writeh(dev, buf, offset++, 1);
        }
        else if (wd->regulationTable.allowChannel[i].channel >= 5000)
        {
            channelNum = (wd->regulationTable.allowChannel[i].channel-5000)/5;

            zmw_tx_buf_writeh(dev, buf, offset++, channelNum);

            zmw_tx_buf_writeh(dev, buf, offset++, 1);
        }
    }
   zmw_leave_critical_section(dev);

    return offset;
}
