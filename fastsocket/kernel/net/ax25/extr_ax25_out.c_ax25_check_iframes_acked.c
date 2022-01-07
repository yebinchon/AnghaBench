
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {unsigned short vs; unsigned short va; } ;
typedef TYPE_1__ ax25_cb ;


 int ax25_calculate_rtt (TYPE_1__*) ;
 int ax25_calculate_t1 (TYPE_1__*) ;
 int ax25_frames_acked (TYPE_1__*,unsigned short) ;
 int ax25_start_t1timer (TYPE_1__*) ;
 int ax25_start_t3timer (TYPE_1__*) ;
 int ax25_stop_t1timer (TYPE_1__*) ;

int ax25_check_iframes_acked(ax25_cb *ax25, unsigned short nr)
{
 if (ax25->vs == nr) {
  ax25_frames_acked(ax25, nr);
  ax25_calculate_rtt(ax25);
  ax25_stop_t1timer(ax25);
  ax25_start_t3timer(ax25);
  return 1;
 } else {
  if (ax25->va != nr) {
   ax25_frames_acked(ax25, nr);
   ax25_calculate_t1(ax25);
   ax25_start_t1timer(ax25);
   return 1;
  }
 }
 return 0;
}
