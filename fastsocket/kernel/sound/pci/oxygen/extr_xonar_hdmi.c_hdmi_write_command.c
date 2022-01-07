
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct oxygen {int dummy; } ;


 int oxygen_write_uart (struct oxygen*,int const) ;

__attribute__((used)) static void hdmi_write_command(struct oxygen *chip, u8 command,
          unsigned int count, const u8 *params)
{
 unsigned int i;
 u8 checksum;

 oxygen_write_uart(chip, 0xfb);
 oxygen_write_uart(chip, 0xef);
 oxygen_write_uart(chip, command);
 oxygen_write_uart(chip, count);
 for (i = 0; i < count; ++i)
  oxygen_write_uart(chip, params[i]);
 checksum = 0xfb + 0xef + command + count;
 for (i = 0; i < count; ++i)
  checksum += params[i];
 oxygen_write_uart(chip, checksum);
}
