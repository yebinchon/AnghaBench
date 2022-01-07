
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ax25_dev ;
struct TYPE_4__ {int rtt; int t1; int t2; int t3; int idle; int window; int modulus; int backoff; int paclen; int n2; int * ax25_dev; } ;
typedef TYPE_1__ ax25_cb ;


 scalar_t__ AX25_DEF_AXDEFMODE ;
 int AX25_DEF_BACKOFF ;
 int AX25_DEF_EWINDOW ;
 int AX25_DEF_IDLE ;
 int AX25_DEF_N2 ;
 int AX25_DEF_PACLEN ;
 int AX25_DEF_T1 ;
 int AX25_DEF_T2 ;
 int AX25_DEF_T3 ;
 int AX25_DEF_WINDOW ;
 int AX25_EMODULUS ;
 int AX25_MODULUS ;
 int ax25_fillin_cb_from_dev (TYPE_1__*,int *) ;
 int msecs_to_jiffies (int ) ;

void ax25_fillin_cb(ax25_cb *ax25, ax25_dev *ax25_dev)
{
 ax25->ax25_dev = ax25_dev;

 if (ax25->ax25_dev != ((void*)0)) {
  ax25_fillin_cb_from_dev(ax25, ax25_dev);
  return;
 }




 ax25->rtt = msecs_to_jiffies(AX25_DEF_T1) / 2;
 ax25->t1 = msecs_to_jiffies(AX25_DEF_T1);
 ax25->t2 = msecs_to_jiffies(AX25_DEF_T2);
 ax25->t3 = msecs_to_jiffies(AX25_DEF_T3);
 ax25->n2 = AX25_DEF_N2;
 ax25->paclen = AX25_DEF_PACLEN;
 ax25->idle = msecs_to_jiffies(AX25_DEF_IDLE);
 ax25->backoff = AX25_DEF_BACKOFF;

 if (AX25_DEF_AXDEFMODE) {
  ax25->modulus = AX25_EMODULUS;
  ax25->window = AX25_DEF_EWINDOW;
 } else {
  ax25->modulus = AX25_MODULUS;
  ax25->window = AX25_DEF_WINDOW;
 }
}
