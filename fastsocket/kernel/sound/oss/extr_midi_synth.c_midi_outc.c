
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* outputc ) (int,unsigned char) ;} ;


 TYPE_1__** midi_devs ;
 unsigned char* prev_out_status ;
 int printk (char*) ;
 scalar_t__ stub1 (int,unsigned char) ;

__attribute__((used)) static void
midi_outc(int midi_dev, int data)
{
 int timeout;

 for (timeout = 0; timeout < 3200; timeout++)
  if (midi_devs[midi_dev]->outputc(midi_dev, (unsigned char) (data & 0xff)))
    {
     if (data & 0x80)


      prev_out_status[midi_dev] =
          (unsigned char) (data & 0xff);


     return;


    }



 printk("Midi send timed out\n");
}
