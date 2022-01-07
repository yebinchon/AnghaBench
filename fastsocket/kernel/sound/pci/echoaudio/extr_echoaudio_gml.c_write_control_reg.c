
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct echoaudio {TYPE_1__* comm_page; scalar_t__ digital_in_automute; } ;
struct TYPE_2__ {int control_register; } ;


 int DE_ACT (char*) ;
 int DSP_VC_WRITE_CONTROL_REG ;
 int EIO ;
 int GML_DIGITAL_IN_AUTO_MUTE ;
 int clear_handshake (struct echoaudio*) ;
 int cpu_to_le32 (int ) ;
 int send_vector (struct echoaudio*,int ) ;
 scalar_t__ wait_handshake (struct echoaudio*) ;

__attribute__((used)) static int write_control_reg(struct echoaudio *chip, u32 value, char force)
{

 if (chip->digital_in_automute)
  value |= GML_DIGITAL_IN_AUTO_MUTE;
 else
  value &= ~GML_DIGITAL_IN_AUTO_MUTE;

 DE_ACT(("write_control_reg: 0x%x\n", value));


 value = cpu_to_le32(value);
 if (value != chip->comm_page->control_register || force) {
  if (wait_handshake(chip))
   return -EIO;
  chip->comm_page->control_register = value;
  clear_handshake(chip);
  return send_vector(chip, DSP_VC_WRITE_CONTROL_REG);
 }
 return 0;
}
