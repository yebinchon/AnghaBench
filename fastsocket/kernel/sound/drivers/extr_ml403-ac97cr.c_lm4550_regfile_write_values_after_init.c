
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ac97 {int dummy; } ;
struct TYPE_2__ {int flag; scalar_t__ value; scalar_t__ def; } ;


 int CODEC_FAKE ;
 int LM4550_REG_DONEREAD ;
 int LM4550_REG_FAKEPROBE ;
 int PDEBUG (int ,char*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 TYPE_1__* lm4550_regfile ;
 int snd_ac97_write (struct snd_ac97*,int,scalar_t__) ;

__attribute__((used)) static void lm4550_regfile_write_values_after_init(struct snd_ac97 *ac97)
{
 int i;
 for (i = 0; i < 64; i++)
  if ((lm4550_regfile[i].flag & LM4550_REG_FAKEPROBE) &&
      (lm4550_regfile[i].value != lm4550_regfile[i].def)) {
   PDEBUG(CODEC_FAKE, "lm4550_regfile_write_values_after_"
          "init(): reg=0x%x value=0x%x / %d is different "
          "from def=0x%x / %d\n",
          i, lm4550_regfile[i].value,
          lm4550_regfile[i].value, lm4550_regfile[i].def,
          lm4550_regfile[i].def);
   snd_ac97_write(ac97, i * 2, lm4550_regfile[i].value);
   lm4550_regfile[i].flag |= LM4550_REG_DONEREAD;
  }
}
