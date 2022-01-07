
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* ax25_dev; } ;
typedef TYPE_3__ ax25_cb ;
struct TYPE_6__ {int slave; } ;
struct TYPE_7__ {int* values; TYPE_1__ dama; } ;





 size_t AX25_VALUES_PROTOCOL ;
 int ax25_ds_idletimer_expiry (TYPE_3__*) ;
 int ax25_std_idletimer_expiry (TYPE_3__*) ;

__attribute__((used)) static void ax25_idletimer_expiry(unsigned long param)
{
 ax25_cb *ax25 = (ax25_cb *)param;

 switch (ax25->ax25_dev->values[AX25_VALUES_PROTOCOL]) {
 case 128:
 case 129:
  ax25_std_idletimer_expiry(ax25);
  break;
 }
}
