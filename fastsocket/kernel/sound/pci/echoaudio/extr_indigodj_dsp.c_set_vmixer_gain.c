
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct echoaudio {int** vmixer_gain; TYPE_1__* comm_page; } ;
struct TYPE_2__ {int* vmixer; } ;


 int DE_ACT (char*) ;
 int EINVAL ;
 int EIO ;
 size_t num_busses_out (struct echoaudio*) ;
 size_t num_pipes_out (struct echoaudio*) ;
 scalar_t__ snd_BUG_ON (int) ;
 scalar_t__ wait_handshake (struct echoaudio*) ;

__attribute__((used)) static int set_vmixer_gain(struct echoaudio *chip, u16 output, u16 pipe,
      int gain)
{
 int index;

 if (snd_BUG_ON(pipe >= num_pipes_out(chip) ||
         output >= num_busses_out(chip)))
  return -EINVAL;

 if (wait_handshake(chip))
  return -EIO;

 chip->vmixer_gain[output][pipe] = gain;
 index = output * num_pipes_out(chip) + pipe;
 chip->comm_page->vmixer[index] = gain;

 DE_ACT(("set_vmixer_gain: pipe %d, out %d = %d\n", pipe, output, gain));
 return 0;
}
