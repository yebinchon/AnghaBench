
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;
struct zsWlanProbeRspFrameHeader {int dummy; } ;
struct zsBssInfo {scalar_t__ macaddr; } ;
struct zsAdditionInfo {int dummy; } ;
struct TYPE_2__ {scalar_t__ wlanMode; } ;


 scalar_t__ ZM_MODE_IBSS ;
 TYPE_1__* wd ;
 struct zsBssInfo* zfBssInfoAllocate (int *) ;
 int zfBssInfoFree (int *,struct zsBssInfo*) ;
 int zfBssInfoInsertToList (int *,struct zsBssInfo*) ;
 int zfBssInfoRemoveFromList (int *,struct zsBssInfo*) ;
 int zfCopyFromRxBuffer (int *,int *,int *,int ,int) ;
 struct zsBssInfo* zfStaFindBssInfo (int *,int *,struct zsWlanProbeRspFrameHeader*) ;
 int zfStaFindFreeOpposite (int *,int *,int*) ;
 int zfStaInitBssInfo (int *,int *,struct zsWlanProbeRspFrameHeader*,struct zsBssInfo*,struct zsAdditionInfo*,int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfProcessProbeRsp(zdev_t* dev, zbuf_t* buf, struct zsAdditionInfo* AddInfo)
{


    struct zsWlanProbeRspFrameHeader* pProbeRspHeader;
    struct zsBssInfo* pBssInfo;
    u8_t pBuf[sizeof(struct zsWlanProbeRspFrameHeader)];
    int res;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    zfCopyFromRxBuffer(dev, buf, pBuf, 0,
                       sizeof(struct zsWlanProbeRspFrameHeader));
    pProbeRspHeader = (struct zsWlanProbeRspFrameHeader*) pBuf;

    zmw_enter_critical_section(dev);



    pBssInfo = zfStaFindBssInfo(dev, buf, pProbeRspHeader);


    if ( pBssInfo == ((void*)0) )
    {

        pBssInfo = zfBssInfoAllocate(dev);
        if (pBssInfo != ((void*)0))
        {
            res = zfStaInitBssInfo(dev, buf, pProbeRspHeader, pBssInfo, AddInfo, 0);

            if ( res != 0 )
            {
                zfBssInfoFree(dev, pBssInfo);
            }
            else
            {
                zfBssInfoInsertToList(dev, pBssInfo);
            }
        }
    }
    else
    {
        res = zfStaInitBssInfo(dev, buf, pProbeRspHeader, pBssInfo, AddInfo, 1);
        if (res == 2)
        {
            zfBssInfoRemoveFromList(dev, pBssInfo);
            zfBssInfoFree(dev, pBssInfo);
        }
        else if ( wd->wlanMode == ZM_MODE_IBSS )
        {
            int idx;


            zfStaFindFreeOpposite(dev, (u16_t *)pBssInfo->macaddr, &idx);
        }
    }

    zmw_leave_critical_section(dev);

    return;
}
