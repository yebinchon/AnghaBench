
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsi_priv {int dummy; } ;


 int CLK_RST ;
 scalar_t__ fsi_is_port_a (struct fsi_priv*) ;
 int fsi_master_mask_set (int ,int,int) ;

__attribute__((used)) static void fsi_clk_ctrl(struct fsi_priv *fsi, int enable)
{
 u32 val = fsi_is_port_a(fsi) ? (1 << 0) : (1 << 4);

 if (enable)
  fsi_master_mask_set(CLK_RST, val, val);
 else
  fsi_master_mask_set(CLK_RST, val, 0);
}
