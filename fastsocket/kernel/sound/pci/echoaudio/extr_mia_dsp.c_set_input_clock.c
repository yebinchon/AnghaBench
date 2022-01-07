
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct echoaudio {int sample_rate; scalar_t__ input_clock; } ;


 int DE_ACT (char*) ;
 scalar_t__ ECHO_CLOCK_INTERNAL ;
 scalar_t__ ECHO_CLOCK_SPDIF ;
 int EINVAL ;
 int set_sample_rate (struct echoaudio*,int ) ;
 scalar_t__ snd_BUG_ON (int) ;

__attribute__((used)) static int set_input_clock(struct echoaudio *chip, u16 clock)
{
 DE_ACT(("set_input_clock(%d)\n", clock));
 if (snd_BUG_ON(clock != ECHO_CLOCK_INTERNAL &&
         clock != ECHO_CLOCK_SPDIF))
  return -EINVAL;

 chip->input_clock = clock;
 return set_sample_rate(chip, chip->sample_rate);
}
