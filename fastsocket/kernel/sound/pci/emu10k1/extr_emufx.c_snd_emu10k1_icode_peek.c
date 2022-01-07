
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_emu10k1_fx8010_code {int name; } ;
struct TYPE_2__ {int lock; int name; } ;
struct snd_emu10k1 {TYPE_1__ fx8010; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_emu10k1_code_peek (struct snd_emu10k1*,struct snd_emu10k1_fx8010_code*) ;
 int snd_emu10k1_gpr_peek (struct snd_emu10k1*,struct snd_emu10k1_fx8010_code*) ;
 int snd_emu10k1_list_controls (struct snd_emu10k1*,struct snd_emu10k1_fx8010_code*) ;
 int snd_emu10k1_tram_peek (struct snd_emu10k1*,struct snd_emu10k1_fx8010_code*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int snd_emu10k1_icode_peek(struct snd_emu10k1 *emu,
      struct snd_emu10k1_fx8010_code *icode)
{
 int err;

 mutex_lock(&emu->fx8010.lock);
 strlcpy(icode->name, emu->fx8010.name, sizeof(icode->name));

 err = snd_emu10k1_gpr_peek(emu, icode);
 if (err >= 0)
  err = snd_emu10k1_tram_peek(emu, icode);
 if (err >= 0)
  err = snd_emu10k1_code_peek(emu, icode);
 if (err >= 0)
  err = snd_emu10k1_list_controls(emu, icode);
 mutex_unlock(&emu->fx8010.lock);
 return err;
}
