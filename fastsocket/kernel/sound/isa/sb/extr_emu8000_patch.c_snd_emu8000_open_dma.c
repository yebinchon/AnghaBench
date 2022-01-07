
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu8000 {int emu; } ;


 int EMU8000_CCCA_WRITE (struct snd_emu8000*,int,int) ;
 int EMU8000_CSL_WRITE (struct snd_emu8000*,int,int) ;
 int EMU8000_DRAM_VOICES ;
 int EMU8000_PSST_WRITE (struct snd_emu8000*,int,int) ;
 int EMU8000_VTFT_WRITE (struct snd_emu8000*,int,int ) ;
 int snd_emu8000_dma_chan (struct snd_emu8000*,int,int) ;
 int snd_emux_lock_voice (int ,int) ;

__attribute__((used)) static int
snd_emu8000_open_dma(struct snd_emu8000 *emu, int write)
{
 int i;


 for (i = 0; i < EMU8000_DRAM_VOICES; i++) {
  snd_emux_lock_voice(emu->emu, i);
  snd_emu8000_dma_chan(emu, i, write);
 }


 EMU8000_VTFT_WRITE(emu, 30, 0);
 EMU8000_PSST_WRITE(emu, 30, 0x1d8);
 EMU8000_CSL_WRITE(emu, 30, 0x1e0);
 EMU8000_CCCA_WRITE(emu, 30, 0x1d8);
 EMU8000_VTFT_WRITE(emu, 31, 0);
 EMU8000_PSST_WRITE(emu, 31, 0x1d8);
 EMU8000_CSL_WRITE(emu, 31, 0x1e0);
 EMU8000_CCCA_WRITE(emu, 31, 0x1d8);

 return 0;
}
