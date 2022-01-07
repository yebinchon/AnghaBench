
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ midi_busy ;
 int pas_remove_intr (int) ;
 int pas_write (int,int) ;

__attribute__((used)) static void pas_midi_close(int dev)
{




 pas_write(0x20 | 0x40, 0x178b);

 pas_remove_intr(0x10);
 midi_busy = 0;
}
