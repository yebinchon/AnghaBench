
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int condition; } ;
typedef TYPE_1__ ax25_cb ;


 int AX25_COND_ACK_PENDING ;
 int AX25_COND_OWN_RX_BUSY ;
 int AX25_POLLON ;
 int AX25_RESPONSE ;
 int AX25_RNR ;
 int AX25_RR ;
 int ax25_send_control (TYPE_1__*,int ,int ,int ) ;

void ax25_std_enquiry_response(ax25_cb *ax25)
{
 if (ax25->condition & AX25_COND_OWN_RX_BUSY)
  ax25_send_control(ax25, AX25_RNR, AX25_POLLON, AX25_RESPONSE);
 else
  ax25_send_control(ax25, AX25_RR, AX25_POLLON, AX25_RESPONSE);

 ax25->condition &= ~AX25_COND_ACK_PENDING;
}
