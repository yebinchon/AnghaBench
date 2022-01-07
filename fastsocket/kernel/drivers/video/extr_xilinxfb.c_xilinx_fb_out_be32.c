
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xilinxfb_drvdata {int flags; int dcr_host; scalar_t__ regs; } ;


 int PLB_ACCESS_FLAG ;
 int dcr_write (int ,int,int) ;
 int out_be32 (scalar_t__,int) ;

__attribute__((used)) static void xilinx_fb_out_be32(struct xilinxfb_drvdata *drvdata, u32 offset,
    u32 val)
{
 if (drvdata->flags & PLB_ACCESS_FLAG)
  out_be32(drvdata->regs + (offset << 2), val);
 else
  dcr_write(drvdata->dcr_host, offset, val);

}
