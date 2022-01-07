
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct echoaudio {int input_clock; int digital_mode; int lock; int sample_rate; TYPE_1__* comm_page; int opencount; } ;
struct TYPE_2__ {int status_clocks; int control_register; } ;


 int DE_ACT (char*) ;
 int DIGITAL_MODE_ADAT ;
 int EAGAIN ;




 int EINVAL ;
 int GML_ADAT_CLOCK ;
 int GML_CLOCK_CLEAR_MASK ;
 int GML_CLOCK_DETECT_BIT_SPDIF96 ;
 int GML_CLOCK_DETECT_BIT_WORD96 ;
 int GML_DOUBLE_SPEED_MODE ;
 int GML_SPDIF_CLOCK ;
 int GML_WORD_CLOCK ;
 int TRUE ;
 scalar_t__ atomic_read (int *) ;
 int le32_to_cpu (int ) ;
 int set_sample_rate (struct echoaudio*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int switch_asic (struct echoaudio*,int) ;
 int write_control_reg (struct echoaudio*,int,int ) ;

__attribute__((used)) static int set_input_clock(struct echoaudio *chip, u16 clock)
{
 u32 control_reg, clocks_from_dsp;
 int err;

 DE_ACT(("set_input_clock:\n"));


 if (atomic_read(&chip->opencount))
  return -EAGAIN;


 control_reg = le32_to_cpu(chip->comm_page->control_register) &
  GML_CLOCK_CLEAR_MASK;
 clocks_from_dsp = le32_to_cpu(chip->comm_page->status_clocks);

 switch (clock) {
 case 130:
  DE_ACT(("Set Mona clock to INTERNAL\n"));
  chip->input_clock = 130;
  return set_sample_rate(chip, chip->sample_rate);
 case 129:
  if (chip->digital_mode == DIGITAL_MODE_ADAT)
   return -EAGAIN;
  spin_unlock_irq(&chip->lock);
  err = switch_asic(chip, clocks_from_dsp &
      GML_CLOCK_DETECT_BIT_SPDIF96);
  spin_lock_irq(&chip->lock);
  if (err < 0)
   return err;
  DE_ACT(("Set Mona clock to SPDIF\n"));
  control_reg |= GML_SPDIF_CLOCK;
  if (clocks_from_dsp & GML_CLOCK_DETECT_BIT_SPDIF96)
   control_reg |= GML_DOUBLE_SPEED_MODE;
  else
   control_reg &= ~GML_DOUBLE_SPEED_MODE;
  break;
 case 128:
  DE_ACT(("Set Mona clock to WORD\n"));
  spin_unlock_irq(&chip->lock);
  err = switch_asic(chip, clocks_from_dsp &
      GML_CLOCK_DETECT_BIT_WORD96);
  spin_lock_irq(&chip->lock);
  if (err < 0)
   return err;
  control_reg |= GML_WORD_CLOCK;
  if (clocks_from_dsp & GML_CLOCK_DETECT_BIT_WORD96)
   control_reg |= GML_DOUBLE_SPEED_MODE;
  else
   control_reg &= ~GML_DOUBLE_SPEED_MODE;
  break;
 case 131:
  DE_ACT(("Set Mona clock to ADAT\n"));
  if (chip->digital_mode != DIGITAL_MODE_ADAT)
   return -EAGAIN;
  control_reg |= GML_ADAT_CLOCK;
  control_reg &= ~GML_DOUBLE_SPEED_MODE;
  break;
 default:
  DE_ACT(("Input clock 0x%x not supported for Mona\n", clock));
  return -EINVAL;
 }

 chip->input_clock = clock;
 return write_control_reg(chip, control_reg, TRUE);
}
