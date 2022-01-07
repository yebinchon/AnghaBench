
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsi_priv {int chan; } ;


 int DIFF_ST ;
 int DOFF_ST ;
 int fsi_reg_read (struct fsi_priv*,int) ;

__attribute__((used)) static int fsi_get_fifo_residue(struct fsi_priv *fsi, int is_play)
{
 u32 status;
 u32 reg = is_play ? DOFF_ST : DIFF_ST;
 int residue;

 status = fsi_reg_read(fsi, reg);
 residue = 0x1ff & (status >> 8);
 residue *= fsi->chan;

 return residue;
}
