
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int condition; int ax25_dev; } ;
typedef TYPE_1__ ax25_cb ;


 int AX25_COND_DAMA_MODE ;
 int ax25_dev_dama_on (int ) ;

void ax25_dama_on(ax25_cb *ax25)
{
 ax25_dev_dama_on(ax25->ax25_dev);
 ax25->condition |= AX25_COND_DAMA_MODE;
}
