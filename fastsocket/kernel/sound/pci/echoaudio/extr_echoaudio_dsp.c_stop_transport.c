
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct echoaudio {TYPE_1__* comm_page; int active_mask; } ;
struct TYPE_2__ {int cmd_stop; int cmd_reset; } ;


 int DE_ACT (char*) ;
 int DSP_VC_STOP_TRANSFER ;
 int EIO ;
 int clear_handshake (struct echoaudio*) ;
 int cpu_to_le32 (int ) ;
 int send_vector (struct echoaudio*,int ) ;
 scalar_t__ wait_handshake (struct echoaudio*) ;

__attribute__((used)) static int stop_transport(struct echoaudio *chip, u32 channel_mask)
{
 DE_ACT(("stop_transport %x\n", channel_mask));

 if (wait_handshake(chip))
  return -EIO;

 chip->comm_page->cmd_stop |= cpu_to_le32(channel_mask);
 chip->comm_page->cmd_reset |= cpu_to_le32(channel_mask);
 if (chip->comm_page->cmd_reset) {
  clear_handshake(chip);
  send_vector(chip, DSP_VC_STOP_TRANSFER);
  if (wait_handshake(chip))
   return -EIO;

  chip->active_mask &= ~channel_mask;
  chip->comm_page->cmd_stop = 0;
  chip->comm_page->cmd_reset = 0;
  return 0;
 }

 DE_ACT(("stop_transport: No pipes to stop!\n"));
 return 0;
}
