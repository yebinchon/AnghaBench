
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pmac {struct pmac_daca* mixer_data; } ;
struct pmac_daca {int i2c; } ;


 int kfree (struct pmac_daca*) ;
 int snd_pmac_keywest_cleanup (int *) ;

__attribute__((used)) static void daca_cleanup(struct snd_pmac *chip)
{
 struct pmac_daca *mix = chip->mixer_data;
 if (! mix)
  return;
 snd_pmac_keywest_cleanup(&mix->i2c);
 kfree(mix);
 chip->mixer_data = ((void*)0);
}
