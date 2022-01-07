
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u64_t ;
typedef int u32_t ;
typedef int u16_t ;
struct zsHpPriv {int camRollCallTable; } ;
struct TYPE_3__ {int flagKeyChanging; } ;
struct TYPE_4__ {TYPE_1__ sta; struct zsHpPriv* hpPrivate; } ;


 int ZM_CMD_SET_KEY ;
 int ZM_MAX_CMD_SIZE ;
 TYPE_2__* wd ;
 int zfIssueCmd (int *,int*,int,int ,int *) ;
 int zm_debug_msg1 (char*,int ) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u32_t zfHpSetKey(zdev_t* dev, u8_t user, u8_t keyId, u8_t type,
        u16_t* mac, u32_t* key)
{
    u32_t cmd[(ZM_MAX_CMD_SIZE/4)];
    u16_t ret;
    u16_t i;
    struct zsHpPriv* hpPriv;

    zmw_get_wlan_dev(dev);
    hpPriv=wd->hpPrivate;
    cmd[0] = 0x0000281C;
    cmd[1] = ((u32_t)keyId<<16) + (u32_t)user;
    cmd[2] = ((u32_t)mac[0]<<16) + (u32_t)type;
    cmd[3] = ((u32_t)mac[2]<<16) + ((u32_t)mac[1]);

    for (i=0; i<4; i++)
    {
        cmd[4+i] = key[i];
    }

    if (user < 64)
    {
        hpPriv->camRollCallTable |= ((u64_t) 1) << user;
    }


    ret = zfIssueCmd(dev, cmd, 32, ZM_CMD_SET_KEY, ((void*)0));
    return ret;
}
