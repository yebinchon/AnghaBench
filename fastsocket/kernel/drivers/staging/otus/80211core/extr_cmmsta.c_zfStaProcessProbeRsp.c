
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
struct zsAdditionInfo {int dummy; } ;
struct TYPE_3__ {int bChannelScan; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 TYPE_2__* wd ;
 int zfProcessProbeRsp (int *,int *,struct zsAdditionInfo*) ;
 int zmw_get_wlan_dev (int *) ;

void zfStaProcessProbeRsp(zdev_t* dev, zbuf_t* buf, struct zsAdditionInfo* AddInfo)
{
    zfProcessProbeRsp(dev, buf, AddInfo);
}
