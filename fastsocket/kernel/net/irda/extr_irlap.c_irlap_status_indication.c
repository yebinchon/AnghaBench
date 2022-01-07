
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int instance; } ;
struct irlap_cb {TYPE_1__ notify; } ;


 int IRDA_MESSAGE (char*) ;
 int LOCK_NO_CHANGE ;


 int irlmp_status_indication (int ,int,int ) ;

void irlap_status_indication(struct irlap_cb *self, int quality_of_link)
{
 switch (quality_of_link) {
 case 128:
  IRDA_MESSAGE("IrLAP, no activity on link!\n");
  break;
 case 129:
  IRDA_MESSAGE("IrLAP, noisy link!\n");
  break;
 default:
  break;
 }
 irlmp_status_indication(self->notify.instance,
    quality_of_link, LOCK_NO_CHANGE);
}
