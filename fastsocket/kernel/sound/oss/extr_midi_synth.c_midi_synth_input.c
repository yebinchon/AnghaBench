
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct midi_input_info {int m_state; int m_ptr; int m_left; unsigned char* m_buf; unsigned char m_prev_status; } ;
struct TYPE_2__ {struct midi_input_info in_info; } ;





 int do_midi_msg (int,unsigned char*,int) ;
 int* midi2synth ;
 TYPE_1__** midi_devs ;
 int num_midis ;
 int printk (char*,int,int,int) ;

__attribute__((used)) static void
midi_synth_input(int orig_dev, unsigned char data)
{
 int dev;
 struct midi_input_info *inc;

 static unsigned char len_tab[] =

 {
  2,
  2,
  2,
  2,
  1,
  1,
  2,
  0
 };

 if (orig_dev < 0 || orig_dev > num_midis || midi_devs[orig_dev] == ((void*)0))
  return;

 if (data == 0xfe)
  return;

 dev = midi2synth[orig_dev];
 inc = &midi_devs[orig_dev]->in_info;

 switch (inc->m_state)
   {
   case 129:
    if (data & 0x80)
      {
       if ((data & 0xf0) == 0xf0)
         {
          switch (data)
     {
     case 0xf0:
      inc->m_state = 128;
      break;

     case 0xf1:
     case 0xf3:
      inc->m_state = 130;
      inc->m_ptr = 1;
      inc->m_left = 1;
      inc->m_buf[0] = data;
      break;

     case 0xf2:
      inc->m_state = 130;
      inc->m_ptr = 1;
      inc->m_left = 2;
      inc->m_buf[0] = data;
      break;

     default:
      inc->m_buf[0] = data;
      inc->m_ptr = 1;
      do_midi_msg(dev, inc->m_buf, inc->m_ptr);
      inc->m_ptr = 0;
      inc->m_left = 0;
     }
       } else
         {
          inc->m_state = 130;
          inc->m_ptr = 1;
          inc->m_left = len_tab[(data >> 4) - 8];
          inc->m_buf[0] = inc->m_prev_status = data;
         }
      } else if (inc->m_prev_status & 0x80) {

       inc->m_ptr = 2;
       inc->m_buf[1] = data;
       inc->m_buf[0] = inc->m_prev_status;
       inc->m_left = len_tab[(inc->m_buf[0] >> 4) - 8] - 1;
       if (inc->m_left > 0)
        inc->m_state = 130;
       else {
        inc->m_state = 129;
        do_midi_msg(dev, inc->m_buf, inc->m_ptr);
        inc->m_ptr = 0;
       }
      }
    break;

   case 130:
    inc->m_buf[inc->m_ptr++] = data;
    if (--inc->m_left <= 0)
      {
       inc->m_state = 129;
       do_midi_msg(dev, inc->m_buf, inc->m_ptr);
       inc->m_ptr = 0;
      }
    break;

   case 128:
    if (data == 0xf7)
      {
       inc->m_state = 129;
       inc->m_left = 0;
       inc->m_ptr = 0;
      }
    break;

   default:
    printk("MIDI%d: Unexpected state %d (%02x)\n", orig_dev, inc->m_state, (int) data);
    inc->m_state = 129;
   }
}
