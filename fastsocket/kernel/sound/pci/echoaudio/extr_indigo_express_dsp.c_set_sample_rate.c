
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct echoaudio {int sample_rate; TYPE_1__* comm_page; } ;
struct TYPE_2__ {int control_register; } ;


 int DSP_VC_UPDATE_CLOCKS ;
 int EINVAL ;
 int EIO ;
 int INDIGO_EXPRESS_32000 ;
 int INDIGO_EXPRESS_44100 ;
 int INDIGO_EXPRESS_48000 ;
 int INDIGO_EXPRESS_CLOCK_MASK ;
 int INDIGO_EXPRESS_DOUBLE_SPEED ;
 int clear_handshake (struct echoaudio*) ;
 int cpu_to_le32 (int) ;
 int le32_to_cpu (int ) ;
 int send_vector (struct echoaudio*,int ) ;
 scalar_t__ wait_handshake (struct echoaudio*) ;

__attribute__((used)) static int set_sample_rate(struct echoaudio *chip, u32 rate)
{
 u32 clock, control_reg, old_control_reg;

 if (wait_handshake(chip))
  return -EIO;

 old_control_reg = le32_to_cpu(chip->comm_page->control_register);
 control_reg = old_control_reg & ~INDIGO_EXPRESS_CLOCK_MASK;

 switch (rate) {
 case 32000:
  clock = INDIGO_EXPRESS_32000;
  break;
 case 44100:
  clock = INDIGO_EXPRESS_44100;
  break;
 case 48000:
  clock = INDIGO_EXPRESS_48000;
  break;
 case 64000:
  clock = INDIGO_EXPRESS_32000|INDIGO_EXPRESS_DOUBLE_SPEED;
  break;
 case 88200:
  clock = INDIGO_EXPRESS_44100|INDIGO_EXPRESS_DOUBLE_SPEED;
  break;
 case 96000:
  clock = INDIGO_EXPRESS_48000|INDIGO_EXPRESS_DOUBLE_SPEED;
  break;
 default:
  return -EINVAL;
 }

 control_reg |= clock;
 if (control_reg != old_control_reg) {
  chip->comm_page->control_register = cpu_to_le32(control_reg);
  chip->sample_rate = rate;
  clear_handshake(chip);
  return send_vector(chip, DSP_VC_UPDATE_CLOCKS);
 }
 return 0;
}
