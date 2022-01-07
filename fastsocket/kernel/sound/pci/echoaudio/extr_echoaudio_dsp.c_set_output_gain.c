
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct echoaudio {TYPE_1__* comm_page; void** output_gain; } ;
typedef void* s8 ;
struct TYPE_2__ {void** line_out_level; } ;


 int EINVAL ;
 int EIO ;
 size_t num_busses_out (struct echoaudio*) ;
 scalar_t__ snd_BUG_ON (int) ;
 scalar_t__ wait_handshake (struct echoaudio*) ;

__attribute__((used)) static int set_output_gain(struct echoaudio *chip, u16 channel, s8 gain)
{
 if (snd_BUG_ON(channel >= num_busses_out(chip)))
  return -EINVAL;

 if (wait_handshake(chip))
  return -EIO;


 chip->output_gain[channel] = gain;
 chip->comm_page->line_out_level[channel] = gain;
 return 0;
}
