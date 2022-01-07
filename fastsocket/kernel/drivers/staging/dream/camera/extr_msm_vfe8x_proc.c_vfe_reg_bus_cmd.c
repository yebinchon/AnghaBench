
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_buscmd {scalar_t__ statsPingpongReload; scalar_t__ busPingpongReload; scalar_t__ stripeReload; } ;
struct vfe_bus_cmd_data {scalar_t__ stripeReload; scalar_t__ statsPingpongReload; scalar_t__ busPingpongReload; } ;
typedef int cmd ;
struct TYPE_2__ {scalar_t__ vfebase; } ;


 int CDBG (char*,int ) ;
 scalar_t__ VFE_BUS_CMD ;
 TYPE_1__* ctrl ;
 int memset (struct vfe_buscmd*,int ,int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void vfe_reg_bus_cmd(struct vfe_bus_cmd_data *in)
{
 struct vfe_buscmd cmd;
 memset(&cmd, 0, sizeof(cmd));

 cmd.stripeReload = in->stripeReload;
 cmd.busPingpongReload = in->busPingpongReload;
 cmd.statsPingpongReload = in->statsPingpongReload;

 writel(*((uint32_t *)&cmd), ctrl->vfebase + VFE_BUS_CMD);

 CDBG("bus command = 0x%x\n", (*((uint32_t *)&cmd)));



 in->busPingpongReload = 0;
 in->statsPingpongReload = 0;
 in->stripeReload = 0;
}
