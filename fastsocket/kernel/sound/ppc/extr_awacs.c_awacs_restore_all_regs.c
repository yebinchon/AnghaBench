
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pmac {scalar_t__ model; int * awacs_reg; } ;


 scalar_t__ PMAC_SCREAMER ;
 int snd_pmac_awacs_write_noreg (struct snd_pmac*,int,int ) ;

__attribute__((used)) static void awacs_restore_all_regs(struct snd_pmac *chip)
{
 snd_pmac_awacs_write_noreg(chip, 0, chip->awacs_reg[0]);
 snd_pmac_awacs_write_noreg(chip, 1, chip->awacs_reg[1]);
 snd_pmac_awacs_write_noreg(chip, 2, chip->awacs_reg[2]);
 snd_pmac_awacs_write_noreg(chip, 4, chip->awacs_reg[4]);
 if (chip->model == PMAC_SCREAMER) {
  snd_pmac_awacs_write_noreg(chip, 5, chip->awacs_reg[5]);
  snd_pmac_awacs_write_noreg(chip, 6, chip->awacs_reg[6]);
  snd_pmac_awacs_write_noreg(chip, 7, chip->awacs_reg[7]);
 }
}
