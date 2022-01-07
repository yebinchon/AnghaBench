
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pmac {TYPE_1__* awacs; } ;
struct TYPE_2__ {int codec_stat; } ;


 int MASK_VALID ;
 int in_le32 (int *) ;
 int mdelay (int) ;
 int snd_printd (char*) ;

__attribute__((used)) static void snd_pmac_screamer_wait(struct snd_pmac *chip)
{
 long timeout = 2000;
 while (!(in_le32(&chip->awacs->codec_stat) & MASK_VALID)) {
  mdelay(1);
  if (! --timeout) {
   snd_printd("snd_pmac_screamer_wait timeout\n");
   break;
  }
 }
}
