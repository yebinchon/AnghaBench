
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ax25_cb ;


 int AX25_COMMAND ;
 int AX25_DISC ;
 int AX25_POLLON ;
 int ETIMEDOUT ;
 int ax25_dama_off (int *) ;
 int ax25_disconnect (int *,int ) ;
 int ax25_send_control (int *,int ,int ,int ) ;

void ax25_ds_t3timer_expiry(ax25_cb *ax25)
{
 ax25_send_control(ax25, AX25_DISC, AX25_POLLON, AX25_COMMAND);
 ax25_dama_off(ax25);
 ax25_disconnect(ax25, ETIMEDOUT);
}
