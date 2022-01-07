
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct echoaudio {int sample_rate; int digital_mode; int lock; int * asic_code; TYPE_1__* comm_page; int input_clock; } ;
struct TYPE_2__ {int control_register; } ;


 int DE_ACT (char*) ;



 int ECHO_CLOCK_ADAT ;
 int ECHO_CLOCK_INTERNAL ;
 int ECHO_CLOCK_SPDIF ;
 int EINVAL ;
 int FALSE ;
 size_t FW_MONA_301_1_ASIC96 ;
 size_t FW_MONA_361_1_ASIC96 ;
 int GML_ADAT_MODE ;
 int GML_DIGITAL_MODE_CLEAR_MASK ;
 int GML_DOUBLE_SPEED_MODE ;
 int GML_SPDIF_OPTICAL_MODE ;
 int TRUE ;
 int * card_fw ;
 int le32_to_cpu (int ) ;
 int set_input_clock (struct echoaudio*,int ) ;
 int set_sample_rate (struct echoaudio*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int write_control_reg (struct echoaudio*,int ,int) ;

__attribute__((used)) static int dsp_set_digital_mode(struct echoaudio *chip, u8 mode)
{
 u32 control_reg;
 int err, incompatible_clock;


 incompatible_clock = FALSE;
 switch (mode) {
 case 129:
 case 128:
  if (chip->input_clock == ECHO_CLOCK_ADAT)
   incompatible_clock = TRUE;
  break;
 case 130:
  if (chip->input_clock == ECHO_CLOCK_SPDIF)
   incompatible_clock = TRUE;
  break;
 default:
  DE_ACT(("Digital mode not supported: %d\n", mode));
  return -EINVAL;
 }

 spin_lock_irq(&chip->lock);

 if (incompatible_clock) {
  chip->sample_rate = 48000;
  set_input_clock(chip, ECHO_CLOCK_INTERNAL);
 }


 control_reg = le32_to_cpu(chip->comm_page->control_register);
 control_reg &= GML_DIGITAL_MODE_CLEAR_MASK;


 switch (mode) {
 case 129:
  control_reg |= GML_SPDIF_OPTICAL_MODE;
  break;
 case 128:

  break;
 case 130:


  if (chip->asic_code == &card_fw[FW_MONA_361_1_ASIC96] ||
      chip->asic_code == &card_fw[FW_MONA_301_1_ASIC96]) {
   set_sample_rate(chip, 48000);
  }
  control_reg |= GML_ADAT_MODE;
  control_reg &= ~GML_DOUBLE_SPEED_MODE;
  break;
 }

 err = write_control_reg(chip, control_reg, FALSE);
 spin_unlock_irq(&chip->lock);
 if (err < 0)
  return err;
 chip->digital_mode = mode;

 DE_ACT(("set_digital_mode to %d\n", mode));
 return incompatible_clock;
}
