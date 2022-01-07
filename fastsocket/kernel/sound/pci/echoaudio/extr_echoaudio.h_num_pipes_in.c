
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct echoaudio {int dummy; } ;


 int px_analog_in (struct echoaudio const*) ;
 int px_num (struct echoaudio const*) ;

__attribute__((used)) static inline int num_pipes_in(const struct echoaudio *chip)
{
 return px_num(chip) - px_analog_in(chip);
}
