
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef size_t u8_t ;
typedef int u16_t ;
struct zsAdditionInfo {int dummy; } ;
struct TYPE_6__ {int* encryMode; } ;
struct TYPE_7__ {int* encryMode; TYPE_2__ wds; TYPE_1__* staTable; } ;
struct TYPE_8__ {scalar_t__ wlanMode; TYPE_3__ ap; } ;
struct TYPE_5__ {int encryMode; } ;




 size_t ZM_MAX_AP_SUPPORT ;
 int ZM_MAX_WDS_SUPPORT ;
 scalar_t__ ZM_MODE_AP ;
 scalar_t__ ZM_MODE_PSEUDO ;




 scalar_t__ ZM_WLAN_HEADER_A2_OFFSET ;
 TYPE_4__* wd ;
 int zfApFindSta (int *,int*) ;
 size_t zfGetEncryModeFromRxStatus (struct zsAdditionInfo*) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_rx_buf_readh (int *,int *,scalar_t__) ;

void zfGetRxIvIcvLength(zdev_t* dev, zbuf_t* buf, u8_t vap, u16_t* pIvLen,
                        u16_t* pIcvLen, struct zsAdditionInfo* addInfo)
{
    u16_t wdsPort;
    u8_t encryMode;

    zmw_get_wlan_dev(dev);

    *pIvLen = 0;
    *pIcvLen = 0;

    encryMode = zfGetEncryModeFromRxStatus(addInfo);

    if ( wd->wlanMode == ZM_MODE_AP )
    {
        if (vap < ZM_MAX_AP_SUPPORT)
        {
            if (( wd->ap.encryMode[vap] == 128 ) ||
                    ( wd->ap.encryMode[vap] == 130 ) ||
                    ( wd->ap.encryMode[vap] == 129 ))
            {
                *pIvLen = 4;
                *pIcvLen = 4;
            }
            else
            {
                u16_t id;
                u16_t addr[3];

                addr[0] = zmw_rx_buf_readh(dev, buf, ZM_WLAN_HEADER_A2_OFFSET);
                addr[1] = zmw_rx_buf_readh(dev, buf, ZM_WLAN_HEADER_A2_OFFSET+2);
                addr[2] = zmw_rx_buf_readh(dev, buf, ZM_WLAN_HEADER_A2_OFFSET+4);


                if ((id = zfApFindSta(dev, addr)) != 0xffff)
                {
                    if (wd->ap.staTable[id].encryMode == 131)
                    {
                        *pIvLen = 8;
                        *pIcvLen = 4;
                    }
                    else if (wd->ap.staTable[id].encryMode == 133)
                    {
                        *pIvLen = 8;
                        *pIcvLen = 8;

                    }







                }
            }

            if ((wdsPort = vap - 0x20) >= ZM_MAX_WDS_SUPPORT)
            {
                wdsPort = 0;
            }

            switch (wd->ap.wds.encryMode[wdsPort])
   {
   case 128:
   case 130:
   case 129:
                *pIvLen = 4;
                *pIcvLen = 4;
    break;
   case 131:
                *pIvLen = 8;
                *pIcvLen = 4;
    break;
   case 133:
                *pIvLen = 8;
                *pIcvLen = 0;
    break;






   }
        }
    }
 else if ( wd->wlanMode == ZM_MODE_PSEUDO)
    {

        switch (encryMode)
  {
        case 128:
        case 130:
        case 129:
            *pIvLen = 4;
            *pIcvLen = 4;
   break;
  case 131:
            *pIvLen = 8;
            *pIcvLen = 4;
   break;
  case 133:
            *pIvLen = 8;
            *pIcvLen = 0;
   break;





  }
    }
    else
    {
        if ( (encryMode == 128)||
             (encryMode == 130)||
             (encryMode == 129) )
        {
            *pIvLen = 4;
            *pIcvLen = 4;
        }
        else if ( encryMode == 131 )
        {
            *pIvLen = 8;
            *pIcvLen = 4;
        }
        else if ( encryMode == 133 )
        {
            *pIvLen = 8;
            *pIcvLen = 8;
        }







    }
}
