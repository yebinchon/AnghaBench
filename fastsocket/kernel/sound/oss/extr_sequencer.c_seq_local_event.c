
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMAbuf_start_devices (unsigned int) ;


__attribute__((used)) static void seq_local_event(unsigned char *event_rec)
{
 unsigned char cmd = event_rec[1];
 unsigned int parm = *((unsigned int *) &event_rec[4]);

 switch (cmd)
 {
  case 128:
   DMAbuf_start_devices(parm);
   break;

  default:;
 }
}
