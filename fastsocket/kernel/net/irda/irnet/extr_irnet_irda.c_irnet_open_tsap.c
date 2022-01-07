
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int name; TYPE_2__* instance; int status_indication; int flow_indication; int data_indication; int disconnect_indication; int connect_indication; int connect_confirm; } ;
typedef TYPE_1__ notify_t ;
struct TYPE_10__ {int stsap_sel; TYPE_3__* tsap; } ;
typedef TYPE_2__ irnet_socket ;
struct TYPE_11__ {int stsap_sel; } ;


 int DABORT (int ,int ,int ,char*) ;
 int DEFAULT_INITIAL_CREDIT ;
 int DENTER (int ,char*,TYPE_2__*) ;
 int DEXIT (int ,char*,TYPE_3__*,int ) ;
 int EBUSY ;
 int ENOMEM ;
 int IRDA_SR_ERROR ;
 int IRDA_SR_TRACE ;
 int IRNET_NOTIFY_NAME ;
 int LSAP_ANY ;
 int irda_notify_init (TYPE_1__*) ;
 int irnet_connect_confirm ;
 int irnet_connect_indication ;
 int irnet_data_indication ;
 int irnet_disconnect_indication ;
 int irnet_flow_indication ;
 int irnet_status_indication ;
 TYPE_3__* irttp_open_tsap (int ,int ,TYPE_1__*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static inline int
irnet_open_tsap(irnet_socket * self)
{
  notify_t notify;

  DENTER(IRDA_SR_TRACE, "(self=0x%p)\n", self);

  DABORT(self->tsap != ((void*)0), -EBUSY, IRDA_SR_ERROR, "Already busy !\n");


  irda_notify_init(&notify);
  notify.connect_confirm = irnet_connect_confirm;
  notify.connect_indication = irnet_connect_indication;
  notify.disconnect_indication = irnet_disconnect_indication;
  notify.data_indication = irnet_data_indication;

  notify.flow_indication = irnet_flow_indication;
  notify.status_indication = irnet_status_indication;
  notify.instance = self;
  strlcpy(notify.name, IRNET_NOTIFY_NAME, sizeof(notify.name));


  self->tsap = irttp_open_tsap(LSAP_ANY, DEFAULT_INITIAL_CREDIT,
          &notify);
  DABORT(self->tsap == ((void*)0), -ENOMEM,
  IRDA_SR_ERROR, "Unable to allocate TSAP !\n");


  self->stsap_sel = self->tsap->stsap_sel;

  DEXIT(IRDA_SR_TRACE, " - tsap=0x%p, sel=0x%X\n",
 self->tsap, self->stsap_sel);
  return 0;
}
