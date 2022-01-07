
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* outputc ) (int,unsigned char) ;} ;
struct TYPE_3__ {int midi_dev; } ;


 TYPE_2__** midi_devs ;
 int prefix_cmd (int,int) ;
 int stub1 (int,unsigned char) ;
 int stub2 (int,unsigned char) ;
 TYPE_1__** synth_devs ;
 int* sysex_state ;

int
midi_synth_send_sysex(int dev, unsigned char *bytes, int len)
{
 int orig_dev = synth_devs[dev]->midi_dev;
 int i;

 for (i = 0; i < len; i++)
   {
    switch (bytes[i])
      {
      case 0xf0:
       if (!prefix_cmd(orig_dev, 0xf0))
        return 0;
       sysex_state[dev] = 1;
       break;

      case 0xf7:
       if (!sysex_state[dev])
        return 0;
       sysex_state[dev] = 0;
       break;

      default:
       if (!sysex_state[dev])
        return 0;

       if (bytes[i] & 0x80)
         {
          bytes[i] = 0xf7;
          sysex_state[dev] = 0;
         }
      }

    if (!midi_devs[orig_dev]->outputc(orig_dev, bytes[i]))
      {




       int timeout = 0;

       bytes[i] = 0xf7;
       sysex_state[dev] = 0;

       while (!midi_devs[orig_dev]->outputc(orig_dev, bytes[i]) &&
       timeout < 1000)
        timeout++;
      }
    if (!sysex_state[dev])
     return 0;
   }

 return 0;
}
