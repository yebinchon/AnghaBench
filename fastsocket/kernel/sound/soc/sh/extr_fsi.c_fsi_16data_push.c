
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct snd_pcm_runtime {scalar_t__ dma_area; } ;
struct fsi_priv {int byte_offset; } ;


 int DODT ;
 int fsi_reg_write (struct fsi_priv*,int ,int) ;

__attribute__((used)) static void fsi_16data_push(struct fsi_priv *fsi,
      struct snd_pcm_runtime *runtime,
      int send)
{
 u16 *dma_start;
 u32 snd;
 int i;


 dma_start = (u16 *)runtime->dma_area;
 dma_start += fsi->byte_offset / 2;





 for (i = 0; i < send; i++) {
  snd = (u32)dma_start[i];
  fsi_reg_write(fsi, DODT, snd << 8);
 }
}
