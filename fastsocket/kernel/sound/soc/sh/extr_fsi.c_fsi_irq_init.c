
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsi_priv {int dummy; } ;


 int DIFF_CTL ;
 int DOFF_CTL ;
 int FIFO_CLR ;
 int INT_ST ;
 int IRQ_HALF ;
 int fsi_irq_disable (struct fsi_priv*,int) ;
 int fsi_master_mask_set (int ,int ,int ) ;
 int fsi_port_ab_io_bit (struct fsi_priv*,int) ;
 int fsi_reg_mask_set (struct fsi_priv*,int ,int ,int ) ;
 int fsi_reg_write (struct fsi_priv*,int ,int ) ;

__attribute__((used)) static void fsi_irq_init(struct fsi_priv *fsi, int is_play)
{
 u32 data;
 u32 ctrl;

 data = fsi_port_ab_io_bit(fsi, is_play);
 ctrl = is_play ? DOFF_CTL : DIFF_CTL;


 fsi_irq_disable(fsi, is_play);


 fsi_reg_write(fsi, ctrl, IRQ_HALF);


 fsi_reg_mask_set(fsi, ctrl, FIFO_CLR, FIFO_CLR);


 fsi_master_mask_set(INT_ST, data, 0);
}
