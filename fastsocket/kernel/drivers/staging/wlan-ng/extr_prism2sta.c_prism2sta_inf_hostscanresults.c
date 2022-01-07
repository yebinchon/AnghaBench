
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ priv; } ;
typedef TYPE_1__ wlandevice_t ;
struct TYPE_8__ {int scanflag; int cmdq; int scanresults; } ;
typedef TYPE_2__ hfa384x_t ;
struct TYPE_9__ {int framelen; } ;
typedef TYPE_3__ hfa384x_InfFrame_t ;


 int GFP_ATOMIC ;
 int kfree (int ) ;
 int kmalloc (int,int ) ;
 int memcpy (int ,TYPE_3__*,int) ;
 int pr_debug (char*,int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void prism2sta_inf_hostscanresults(wlandevice_t *wlandev,
       hfa384x_InfFrame_t *inf)
{
 hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
 int nbss;

 nbss = (inf->framelen - 3) / 32;
 pr_debug("Received %d hostscan results\n", nbss);

 if (nbss > 32)
  nbss = 32;

 kfree(hw->scanresults);

 hw->scanresults = kmalloc(sizeof(hfa384x_InfFrame_t), GFP_ATOMIC);
 memcpy(hw->scanresults, inf, sizeof(hfa384x_InfFrame_t));

 if (nbss == 0)
  nbss = -1;


 hw->scanflag = nbss;
 wake_up_interruptible(&hw->cmdq);
}
