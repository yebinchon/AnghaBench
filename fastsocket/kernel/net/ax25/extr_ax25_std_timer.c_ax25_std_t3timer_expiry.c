
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; scalar_t__ n2count; } ;
typedef TYPE_1__ ax25_cb ;


 int AX25_STATE_4 ;
 int ax25_std_transmit_enquiry (TYPE_1__*) ;

void ax25_std_t3timer_expiry(ax25_cb *ax25)
{
 ax25->n2count = 0;
 ax25_std_transmit_enquiry(ax25);
 ax25->state = AX25_STATE_4;
}
