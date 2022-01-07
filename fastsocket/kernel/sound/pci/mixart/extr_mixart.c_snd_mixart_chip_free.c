
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixart {int dummy; } ;


 int kfree (struct snd_mixart*) ;

__attribute__((used)) static int snd_mixart_chip_free(struct snd_mixart *chip)
{
 kfree(chip);
 return 0;
}
