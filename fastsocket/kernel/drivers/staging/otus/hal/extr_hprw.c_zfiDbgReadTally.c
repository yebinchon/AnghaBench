
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u32_t ;
typedef int u16_t ;
struct zsHpPriv {scalar_t__ halReInit; } ;
struct TYPE_2__ {scalar_t__ hpPrivate; } ;


 int ZM_CMD_TALLY ;
 int ZM_CMD_TALLY_APD ;
 int ZM_OID_TALLY ;
 int ZM_OID_TALLY_APD ;
 TYPE_1__* wd ;
 int zfIssueCmd (int *,int*,int,int ,int ) ;
 int zmw_get_wlan_dev (int *) ;

u32_t zfiDbgReadTally(zdev_t* dev)
{
    u32_t cmd[1];
    u16_t ret;
 zmw_get_wlan_dev(dev);

 if ( ((struct zsHpPriv*)wd->hpPrivate)->halReInit )
 {
     return 1;
 }


    cmd[0] = 0 | (ZM_CMD_TALLY << 8);
    ret = zfIssueCmd(dev, cmd, 4, ZM_OID_TALLY, 0);


    cmd[0] = 0 | (ZM_CMD_TALLY_APD << 8);
    ret = zfIssueCmd(dev, cmd, 4, ZM_OID_TALLY_APD, 0);

    return ret;
}
