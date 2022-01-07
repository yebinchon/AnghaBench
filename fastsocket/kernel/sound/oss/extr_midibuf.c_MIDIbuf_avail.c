
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DATA_AVAIL (scalar_t__) ;
 scalar_t__* midi_in_buf ;

int MIDIbuf_avail(int dev)
{
 if (midi_in_buf[dev])
  return DATA_AVAIL (midi_in_buf[dev]);
 return 0;
}
