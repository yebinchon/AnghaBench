
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_trident_voice {unsigned int CVol; int FMC; int RVol; int number; } ;
struct snd_trident {scalar_t__ device; } ;


 int CH_DX_FMC_RVOL_CVOL ;
 int CH_NX_ALPHA_FMS_FMC_RVOL_CVOL ;
 int T4D_LFO_GC_CIR ;
 scalar_t__ TRIDENT_DEVICE_ID_NX ;
 int TRID_REG (struct snd_trident*,int ) ;
 int outb (int ,int ) ;
 int outw (int,int ) ;

__attribute__((used)) static void snd_trident_write_cvol_reg(struct snd_trident * trident,
           struct snd_trident_voice * voice,
           unsigned int CVol)
{
 voice->CVol = CVol;
 outb(voice->number, TRID_REG(trident, T4D_LFO_GC_CIR));
 outw(((voice->FMC & 0x0003) << 14) | ((voice->RVol & 0x007f) << 7) |
      (voice->CVol & 0x007f),
      TRID_REG(trident, trident->device == TRIDENT_DEVICE_ID_NX ?
        CH_NX_ALPHA_FMS_FMC_RVOL_CVOL : CH_DX_FMC_RVOL_CVOL));
}
