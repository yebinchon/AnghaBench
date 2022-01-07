
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {int mixer_lock; struct snd_card* card; } ;
struct snd_card {int mixername; } ;
struct sbmix_elem {int dummy; } ;


 int snd_component_add (struct snd_card*,char*) ;
 int snd_sbmixer_add_ctl_elem (struct snd_sb*,struct sbmix_elem*) ;
 int snd_sbmixer_write (struct snd_sb*,unsigned char,unsigned char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_sbmixer_init(struct snd_sb *chip,
       struct sbmix_elem **controls,
       int controls_count,
       unsigned char map[][2],
       int map_count,
       char *name)
{
 unsigned long flags;
 struct snd_card *card = chip->card;
 int idx, err;


 spin_lock_irqsave(&chip->mixer_lock, flags);
 snd_sbmixer_write(chip, 0x00, 0x00);
 spin_unlock_irqrestore(&chip->mixer_lock, flags);


 for (idx = 0; idx < map_count; idx++) {
  spin_lock_irqsave(&chip->mixer_lock, flags);
  snd_sbmixer_write(chip, map[idx][0], map[idx][1]);
  spin_unlock_irqrestore(&chip->mixer_lock, flags);
 }

 for (idx = 0; idx < controls_count; idx++) {
  if ((err = snd_sbmixer_add_ctl_elem(chip, controls[idx])) < 0)
   return err;
 }
 snd_component_add(card, name);
 strcpy(card->mixername, name);
 return 0;
}
