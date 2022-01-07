
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pdacf {int tq; int ak4117_lock; int reg_lock; struct snd_card* card; } ;
struct snd_card {struct snd_pdacf* private_data; } ;


 int GFP_KERNEL ;
 struct snd_pdacf* kzalloc (int,int ) ;
 int pdacf_proc_init (struct snd_pdacf*) ;
 int pdacf_tasklet ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

struct snd_pdacf *snd_pdacf_create(struct snd_card *card)
{
 struct snd_pdacf *chip;

 chip = kzalloc(sizeof(*chip), GFP_KERNEL);
 if (chip == ((void*)0))
  return ((void*)0);
 chip->card = card;
 spin_lock_init(&chip->reg_lock);
 spin_lock_init(&chip->ak4117_lock);
 tasklet_init(&chip->tq, pdacf_tasklet, (unsigned long)chip);
 card->private_data = chip;

 pdacf_proc_init(chip);
 return chip;
}
