
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_3__ {scalar_t__ delayWcmdCount; } ;
struct zsHpPriv {TYPE_1__ cmd; scalar_t__ cmdPending; scalar_t__ cmdHead; scalar_t__ cmdTail; scalar_t__ cmdSend; } ;
struct TYPE_4__ {scalar_t__ hpPrivate; } ;


 TYPE_2__* wd ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfInitCmdQueue(zdev_t* dev)
{
    struct zsHpPriv* hpPriv;

    zmw_get_wlan_dev(dev);
    hpPriv = (struct zsHpPriv*)(wd->hpPrivate);

    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);



    hpPriv->cmdTail = hpPriv->cmdHead = 0;

    hpPriv->cmdPending = 0;
    hpPriv->cmd.delayWcmdCount = 0;
    zmw_leave_critical_section(dev);
}
