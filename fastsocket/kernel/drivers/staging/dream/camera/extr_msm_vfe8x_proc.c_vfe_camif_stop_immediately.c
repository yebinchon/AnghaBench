
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ vfebase; } ;


 scalar_t__ CAMIF_COMMAND ;
 int CAMIF_COMMAND_STOP_IMMEDIATELY ;
 scalar_t__ VFE_CGC_OVERRIDE ;
 TYPE_1__* ctrl ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void vfe_camif_stop_immediately(void)
{
 writel(CAMIF_COMMAND_STOP_IMMEDIATELY, ctrl->vfebase + CAMIF_COMMAND);
 writel(0, ctrl->vfebase + VFE_CGC_OVERRIDE);
}
