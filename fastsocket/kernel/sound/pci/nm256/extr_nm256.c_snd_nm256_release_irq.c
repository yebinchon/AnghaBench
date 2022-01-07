
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nm256 {scalar_t__ irq_acks; int irq; int irq_mutex; } ;


 int free_irq (int,struct nm256*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void snd_nm256_release_irq(struct nm256 *chip)
{
 mutex_lock(&chip->irq_mutex);
 if (chip->irq_acks > 0)
  chip->irq_acks--;
 if (chip->irq_acks == 0 && chip->irq >= 0) {
  free_irq(chip->irq, chip);
  chip->irq = -1;
 }
 mutex_unlock(&chip->irq_mutex);
}
