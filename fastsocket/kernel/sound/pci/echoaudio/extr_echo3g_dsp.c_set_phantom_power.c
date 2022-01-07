
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct echoaudio {char phantom_power; TYPE_1__* comm_page; } ;
struct TYPE_2__ {int e3g_frq_register; int control_register; } ;


 int E3G_PHANTOM_POWER ;
 int le32_to_cpu (int ) ;
 int write_control_reg (struct echoaudio*,int ,int ,int ) ;

__attribute__((used)) static int set_phantom_power(struct echoaudio *chip, char on)
{
 u32 control_reg = le32_to_cpu(chip->comm_page->control_register);

 if (on)
  control_reg |= E3G_PHANTOM_POWER;
 else
  control_reg &= ~E3G_PHANTOM_POWER;

 chip->phantom_power = on;
 return write_control_reg(chip, control_reg,
     le32_to_cpu(chip->comm_page->e3g_frq_register),
     0);
}
