
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef void* u32_t ;
typedef int u16_t ;
struct TYPE_3__ {size_t delayWcmdCount; void** delayWcmdVal; void** delayWcmdAddr; } ;
struct zsHpPriv {TYPE_1__ cmd; } ;
struct TYPE_4__ {struct zsHpPriv* hpPrivate; } ;


 int ZM_MAX_CMD_SIZE ;
 int ZM_OID_INTERNAL_WRITE ;
 TYPE_2__* wd ;
 int zfIssueCmd (int *,void**,int,int ,int *) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u16_t zfDelayWriteInternalReg(zdev_t* dev, u32_t addr, u32_t val)
{
    u32_t cmd[(ZM_MAX_CMD_SIZE/4)];
    u16_t i;
    u16_t ret;
    struct zsHpPriv* hpPriv;

    zmw_get_wlan_dev(dev);
    hpPriv=wd->hpPrivate;

    zmw_declare_for_critical_section();


    zmw_enter_critical_section(dev);


    hpPriv->cmd.delayWcmdAddr[hpPriv->cmd.delayWcmdCount] = addr;
    hpPriv->cmd.delayWcmdVal[hpPriv->cmd.delayWcmdCount++] = val;


    if ((hpPriv->cmd.delayWcmdCount) >= ((ZM_MAX_CMD_SIZE - 4) >> 3))
    {
        cmd[0] = 0x00000100 + (hpPriv->cmd.delayWcmdCount<<3);


        for (i=0; i<hpPriv->cmd.delayWcmdCount; i++)
        {
            cmd[1+(i<<1)] = hpPriv->cmd.delayWcmdAddr[i];
            cmd[2+(i<<1)] = hpPriv->cmd.delayWcmdVal[i];
        }

        hpPriv->cmd.delayWcmdCount = 0;


        zmw_leave_critical_section(dev);


        ret = zfIssueCmd(dev, cmd, 4+(i<<3), ZM_OID_INTERNAL_WRITE, ((void*)0));

        return 1;
    }
    else
    {

        zmw_leave_critical_section(dev);

        return 0;
    }
}
