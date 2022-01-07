
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsi_priv {int dummy; } ;


 int IEMSK ;
 int IMSK ;
 int fsi_master_mask_set (int ,int ,int ) ;
 int fsi_port_ab_io_bit (struct fsi_priv*,int) ;

__attribute__((used)) static void fsi_irq_enable(struct fsi_priv *fsi, int is_play)
{
 u32 data = fsi_port_ab_io_bit(fsi, is_play);

 fsi_master_mask_set(IMSK, data, data);
 fsi_master_mask_set(IEMSK, data, data);
}
