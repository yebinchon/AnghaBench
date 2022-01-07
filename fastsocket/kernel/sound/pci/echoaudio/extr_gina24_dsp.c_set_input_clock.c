
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct echoaudio {int input_clock; int digital_mode; int sample_rate; TYPE_1__* comm_page; } ;
struct TYPE_2__ {int status_clocks; int control_register; } ;


 int DE_ACT (char*) ;
 int DIGITAL_MODE_ADAT ;
 int EAGAIN ;





 int EINVAL ;
 int GML_ADAT_CLOCK ;
 int GML_CLOCK_CLEAR_MASK ;
 int GML_CLOCK_DETECT_BIT_SPDIF96 ;
 int GML_DOUBLE_SPEED_MODE ;
 int GML_ESYNC_CLOCK ;
 int GML_SPDIF_CLOCK ;
 int TRUE ;
 int le32_to_cpu (int ) ;
 int set_sample_rate (struct echoaudio*,int ) ;
 int write_control_reg (struct echoaudio*,int,int ) ;

__attribute__((used)) static int set_input_clock(struct echoaudio *chip, u16 clock)
{
 u32 control_reg, clocks_from_dsp;

 DE_ACT(("set_input_clock:\n"));


 control_reg = le32_to_cpu(chip->comm_page->control_register) &
  GML_CLOCK_CLEAR_MASK;
 clocks_from_dsp = le32_to_cpu(chip->comm_page->status_clocks);

 switch (clock) {
 case 129:
  DE_ACT(("Set Gina24 clock to INTERNAL\n"));
  chip->input_clock = 129;
  return set_sample_rate(chip, chip->sample_rate);
 case 128:
  if (chip->digital_mode == DIGITAL_MODE_ADAT)
   return -EAGAIN;
  DE_ACT(("Set Gina24 clock to SPDIF\n"));
  control_reg |= GML_SPDIF_CLOCK;
  if (clocks_from_dsp & GML_CLOCK_DETECT_BIT_SPDIF96)
   control_reg |= GML_DOUBLE_SPEED_MODE;
  else
   control_reg &= ~GML_DOUBLE_SPEED_MODE;
  break;
 case 132:
  if (chip->digital_mode != DIGITAL_MODE_ADAT)
   return -EAGAIN;
  DE_ACT(("Set Gina24 clock to ADAT\n"));
  control_reg |= GML_ADAT_CLOCK;
  control_reg &= ~GML_DOUBLE_SPEED_MODE;
  break;
 case 131:
  DE_ACT(("Set Gina24 clock to ESYNC\n"));
  control_reg |= GML_ESYNC_CLOCK;
  control_reg &= ~GML_DOUBLE_SPEED_MODE;
  break;
 case 130:
  DE_ACT(("Set Gina24 clock to ESYNC96\n"));
  control_reg |= GML_ESYNC_CLOCK | GML_DOUBLE_SPEED_MODE;
  break;
 default:
  DE_ACT(("Input clock 0x%x not supported for Gina24\n", clock));
  return -EINVAL;
 }

 chip->input_clock = clock;
 return write_control_reg(chip, control_reg, TRUE);
}
