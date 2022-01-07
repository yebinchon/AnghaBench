
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u32_t ;
typedef scalar_t__ u16_t ;
struct zsHpPriv {int cmdPending; } ;
struct TYPE_2__ {struct zsHpPriv* hpPrivate; } ;


 int ZM_LV_1 ;
 TYPE_1__* wd ;
 int zfIdlCmd (int *,int *,scalar_t__) ;
 scalar_t__ zfPutCmd (int *,int *,scalar_t__,scalar_t__,int *) ;
 int zfSendCmdEx (int *) ;
 int zm_msg2_mm (int ,char*,scalar_t__) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u16_t zfIssueCmd(zdev_t* dev, u32_t* cmd, u16_t cmdLen, u16_t src, u8_t* buf)
{
    u16_t cmdFlag = 0;
    u16_t ret;
    struct zsHpPriv* hpPriv;

    zmw_get_wlan_dev(dev);
    hpPriv=wd->hpPrivate;

    zmw_declare_for_critical_section();

    zm_msg2_mm(ZM_LV_1, "cmdLen=", cmdLen);

    zmw_enter_critical_section(dev);
    if (hpPriv->cmdPending == 0)
    {
        hpPriv->cmdPending = 1;
        cmdFlag = 1;
    }
    ret = zfPutCmd(dev, cmd, cmdLen, src, buf);

    zmw_leave_critical_section(dev);

    if (ret != 0)
    {
        return 1;
    }

    if (cmdFlag == 1)
    {
        zfIdlCmd(dev, cmd, cmdLen);
    }

    return 0;
}
