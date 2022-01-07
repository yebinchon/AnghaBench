
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QUEUE_BYTE (int *,unsigned char) ;
 scalar_t__ SPACE_AVAIL (int *) ;
 int * input_sleeper ;
 int ** midi_in_buf ;
 int wake_up (int *) ;

__attribute__((used)) static void midi_input_intr(int dev, unsigned char data)
{
 if (midi_in_buf[dev] == ((void*)0))
  return;

 if (data == 0xfe)


  return;



 if (SPACE_AVAIL(midi_in_buf[dev])) {
  QUEUE_BYTE(midi_in_buf[dev], data);
  wake_up(&input_sleeper[dev]);
 }
}
