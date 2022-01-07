
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct echoaudio {int sample_rate; scalar_t__ input_clock; } ;


 scalar_t__ ECHO_CLOCK_ESYNC ;
 scalar_t__ ECHO_CLOCK_INTERNAL ;
 int EINVAL ;
 int set_sample_rate (struct echoaudio*,int ) ;
 scalar_t__ snd_BUG_ON (int) ;

__attribute__((used)) static int set_input_clock(struct echoaudio *chip, u16 clock)
{
 if (snd_BUG_ON(clock != ECHO_CLOCK_INTERNAL &&
         clock != ECHO_CLOCK_ESYNC))
  return -EINVAL;
 chip->input_clock = clock;
 return set_sample_rate(chip, chip->sample_rate);
}
