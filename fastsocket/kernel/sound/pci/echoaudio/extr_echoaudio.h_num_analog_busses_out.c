
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct echoaudio {int dummy; } ;


 int bx_digital_out (struct echoaudio const*) ;

__attribute__((used)) static inline int num_analog_busses_out(const struct echoaudio *chip)
{
 return bx_digital_out(chip);
}
