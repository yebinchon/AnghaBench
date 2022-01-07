
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MidiBuffer {int command_prev; } ;



int midibuf_skip_message(struct MidiBuffer *this, unsigned short mask)
{
 int cmd = this->command_prev;

 if ((cmd >= 0x80) && (cmd < 0xf0))
  if ((mask & (1 << (cmd & 0x0f))) == 0)
   return 1;

 return 0;
}
