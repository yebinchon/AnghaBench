
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct snd_pdacf {TYPE_1__* ak4117; int card; } ;
struct TYPE_3__ {int (* change_callback ) (TYPE_1__*,int ,int ) ;struct snd_pdacf* change_callback_private; } ;
 int AK4117_UNLCK ;


 int PDAUDIOCF_BLUEDUTY0 ;
 int PDAUDIOCF_BLUEDUTY1 ;
 int PDAUDIOCF_BLUE_LED_OFF ;
 int PDAUDIOCF_CLKDIV0 ;
 int PDAUDIOCF_CLKDIV1 ;
 int PDAUDIOCF_DATAFMT0 ;
 int PDAUDIOCF_DATAFMT1 ;
 int PDAUDIOCF_ELIMAKMBIT ;
 int PDAUDIOCF_HALFRATE ;
 int PDAUDIOCF_IRQAKMEN ;
 int PDAUDIOCF_IRQLVLEN0 ;
 int PDAUDIOCF_IRQLVLEN1 ;
 int PDAUDIOCF_IRQOVREN ;
 int PDAUDIOCF_REDDUTY0 ;
 int PDAUDIOCF_REDDUTY1 ;
 int PDAUDIOCF_RED_LED_OFF ;
 int PDAUDIOCF_REG_IER ;
 int PDAUDIOCF_REG_SCR ;
 int PDAUDIOCF_REG_TCR ;
 int PDAUDIOCF_TESTDATASEL ;
 int pdacf_ak4117_read ;
 int pdacf_ak4117_write ;
 int pdacf_reg_read (struct snd_pdacf*,int ) ;
 int pdacf_reg_write (struct snd_pdacf*,int ,int) ;
 int pdacf_reset (struct snd_pdacf*,int ) ;
 int snd_ak4117_create (int ,int ,int ,unsigned char*,struct snd_pdacf*,TYPE_1__**) ;
 int snd_pdacf_ak4117_change (TYPE_1__*,int ,int ) ;

int snd_pdacf_ak4117_create(struct snd_pdacf *chip)
{
 int err;
 u16 val;




 static unsigned char pgm[5] = {
  128 | 137,
  140 | 130 | 129,
  138 | 139 | 136,
  0xff,
  134 | 135 | 132 | 133 | 131,
 };

 err = pdacf_reset(chip, 0);
 if (err < 0)
  return err;
 err = snd_ak4117_create(chip->card, pdacf_ak4117_read, pdacf_ak4117_write, pgm, chip, &chip->ak4117);
 if (err < 0)
  return err;

 val = pdacf_reg_read(chip, PDAUDIOCF_REG_TCR);

 val &= ~(PDAUDIOCF_ELIMAKMBIT|PDAUDIOCF_TESTDATASEL);




 pdacf_reg_write(chip, PDAUDIOCF_REG_TCR, val);


 val = pdacf_reg_read(chip, PDAUDIOCF_REG_SCR);
 val &= ~(PDAUDIOCF_CLKDIV0 | PDAUDIOCF_CLKDIV1);
 val &= ~(PDAUDIOCF_RED_LED_OFF|PDAUDIOCF_BLUE_LED_OFF);
 val |= PDAUDIOCF_DATAFMT0 | PDAUDIOCF_DATAFMT1;
 pdacf_reg_write(chip, PDAUDIOCF_REG_SCR, val);


 val = pdacf_reg_read(chip, PDAUDIOCF_REG_IER);
 val &= ~(PDAUDIOCF_IRQLVLEN0 | PDAUDIOCF_IRQLVLEN1);
 val &= ~(PDAUDIOCF_BLUEDUTY0 | PDAUDIOCF_REDDUTY0 | PDAUDIOCF_REDDUTY1);
 val |= PDAUDIOCF_BLUEDUTY1 | PDAUDIOCF_HALFRATE;
 val |= PDAUDIOCF_IRQOVREN | PDAUDIOCF_IRQAKMEN;
 pdacf_reg_write(chip, PDAUDIOCF_REG_IER, val);

 chip->ak4117->change_callback_private = chip;
 chip->ak4117->change_callback = snd_pdacf_ak4117_change;


 snd_pdacf_ak4117_change(chip->ak4117, AK4117_UNLCK, 0);

 return 0;
}
