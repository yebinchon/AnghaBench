
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int condition; scalar_t__ modulus; scalar_t__ n2count; } ;
typedef TYPE_1__ ax25_cb ;


 int AX25_COMMAND ;
 scalar_t__ AX25_MODULUS ;
 int AX25_POLLON ;
 int AX25_SABM ;
 int AX25_SABME ;
 int ax25_calculate_t1 (TYPE_1__*) ;
 int ax25_send_control (TYPE_1__*,int ,int ,int ) ;
 int ax25_start_t1timer (TYPE_1__*) ;
 int ax25_stop_idletimer (TYPE_1__*) ;
 int ax25_stop_t2timer (TYPE_1__*) ;
 int ax25_stop_t3timer (TYPE_1__*) ;

void ax25_std_establish_data_link(ax25_cb *ax25)
{
 ax25->condition = 0x00;
 ax25->n2count = 0;

 if (ax25->modulus == AX25_MODULUS)
  ax25_send_control(ax25, AX25_SABM, AX25_POLLON, AX25_COMMAND);
 else
  ax25_send_control(ax25, AX25_SABME, AX25_POLLON, AX25_COMMAND);

 ax25_calculate_t1(ax25);
 ax25_stop_idletimer(ax25);
 ax25_stop_t3timer(ax25);
 ax25_stop_t2timer(ax25);
 ax25_start_t1timer(ax25);
}
