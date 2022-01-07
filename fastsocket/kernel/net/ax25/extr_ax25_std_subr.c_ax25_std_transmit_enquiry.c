
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int condition; } ;
typedef TYPE_1__ ax25_cb ;


 int AX25_COMMAND ;
 int AX25_COND_ACK_PENDING ;
 int AX25_COND_OWN_RX_BUSY ;
 int AX25_POLLON ;
 int AX25_RNR ;
 int AX25_RR ;
 int ax25_calculate_t1 (TYPE_1__*) ;
 int ax25_send_control (TYPE_1__*,int ,int ,int ) ;
 int ax25_start_t1timer (TYPE_1__*) ;

void ax25_std_transmit_enquiry(ax25_cb *ax25)
{
 if (ax25->condition & AX25_COND_OWN_RX_BUSY)
  ax25_send_control(ax25, AX25_RNR, AX25_POLLON, AX25_COMMAND);
 else
  ax25_send_control(ax25, AX25_RR, AX25_POLLON, AX25_COMMAND);

 ax25->condition &= ~AX25_COND_ACK_PENDING;

 ax25_calculate_t1(ax25);
 ax25_start_t1timer(ax25);
}
