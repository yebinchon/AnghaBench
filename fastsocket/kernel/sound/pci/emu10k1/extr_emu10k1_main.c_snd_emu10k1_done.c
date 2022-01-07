
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1 {scalar_t__ port; scalar_t__ audigy; } ;


 int ADCBA ;
 int ADCBS ;
 int ADCBS_BUFSIZE_NONE ;
 int A_DBG ;
 int A_DBG_SINGLE_STEP ;
 int CLIEH ;
 int CLIEL ;
 int CPF ;
 int CVCF ;
 int DBG ;
 int DCYSUSV ;
 int EMU10K1_DBG_SINGLE_STEP ;
 int FXBA ;
 int FXBS ;
 int FXWC ;
 scalar_t__ HCFG ;
 int HCFG_LOCKSOUNDCACHE ;
 int HCFG_LOCKTANKCACHE_MASK ;
 int HCFG_MUTEBUTTONENABLE ;
 scalar_t__ INTE ;
 int MICBA ;
 int MICBS ;
 int NUM_G ;
 int PTB ;
 int PTRX ;
 int SOLEH ;
 int SOLEL ;
 int TCB ;
 int TCBS ;
 int TCBS_BUFFSIZE_16K ;
 int VTFT ;
 int outl (int,scalar_t__) ;
 int snd_emu10k1_ptr_write (struct snd_emu10k1*,int ,int,int ) ;

int snd_emu10k1_done(struct snd_emu10k1 *emu)
{
 int ch;

 outl(0, emu->port + INTE);




 for (ch = 0; ch < NUM_G; ch++)
  snd_emu10k1_ptr_write(emu, DCYSUSV, ch, 0);
 for (ch = 0; ch < NUM_G; ch++) {
  snd_emu10k1_ptr_write(emu, VTFT, ch, 0);
  snd_emu10k1_ptr_write(emu, CVCF, ch, 0);
  snd_emu10k1_ptr_write(emu, PTRX, ch, 0);
  snd_emu10k1_ptr_write(emu, CPF, ch, 0);
 }


 snd_emu10k1_ptr_write(emu, MICBS, 0, 0);
 snd_emu10k1_ptr_write(emu, MICBA, 0, 0);
 snd_emu10k1_ptr_write(emu, FXBS, 0, 0);
 snd_emu10k1_ptr_write(emu, FXBA, 0, 0);
 snd_emu10k1_ptr_write(emu, FXWC, 0, 0);
 snd_emu10k1_ptr_write(emu, ADCBS, 0, ADCBS_BUFSIZE_NONE);
 snd_emu10k1_ptr_write(emu, ADCBA, 0, 0);
 snd_emu10k1_ptr_write(emu, TCBS, 0, TCBS_BUFFSIZE_16K);
 snd_emu10k1_ptr_write(emu, TCB, 0, 0);
 if (emu->audigy)
  snd_emu10k1_ptr_write(emu, A_DBG, 0, A_DBG_SINGLE_STEP);
 else
  snd_emu10k1_ptr_write(emu, DBG, 0, EMU10K1_DBG_SINGLE_STEP);


 snd_emu10k1_ptr_write(emu, CLIEL, 0, 0);
 snd_emu10k1_ptr_write(emu, CLIEH, 0, 0);
 snd_emu10k1_ptr_write(emu, SOLEL, 0, 0);
 snd_emu10k1_ptr_write(emu, SOLEH, 0, 0);


 outl(HCFG_LOCKSOUNDCACHE | HCFG_LOCKTANKCACHE_MASK | HCFG_MUTEBUTTONENABLE, emu->port + HCFG);
 snd_emu10k1_ptr_write(emu, PTB, 0, 0);

 return 0;
}
