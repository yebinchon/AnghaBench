
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ax25_dev; int condition; } ;
typedef TYPE_1__ ax25_cb ;


 int AX25_COND_DAMA_MODE ;
 int ax25_dev_dama_off (int ) ;

void ax25_dama_off(ax25_cb *ax25)
{
 ax25->condition &= ~AX25_COND_DAMA_MODE;
 ax25_dev_dama_off(ax25->ax25_dev);
}
