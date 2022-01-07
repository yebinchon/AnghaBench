
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* rname; int mask; int disconnect_work; int tx_flow; int ckey; int max_sdu_size_rx; void* saddr; void* daddr; void* rsaddr; void* rdaddr; scalar_t__ ttp_connect; scalar_t__ ttp_open; int magic; } ;
typedef TYPE_1__ irnet_socket ;


 int DENTER (int ,char*,TYPE_1__*) ;
 void* DEV_ADDR_ANY ;
 int DEXIT (int ,char*) ;
 int FLOW_START ;
 int INIT_WORK (int *,int ) ;
 int IRDA_SOCK_TRACE ;
 int IRNET_MAGIC ;
 int S_LAN ;
 int TTP_SAR_UNBOUND ;
 int irlmp_register_client (int ,int *,int *,int *) ;
 int irlmp_service_to_hint (int ) ;
 int irnet_ppp_disconnect ;

int
irda_irnet_create(irnet_socket * self)
{
  DENTER(IRDA_SOCK_TRACE, "(self=0x%p)\n", self);

  self->magic = IRNET_MAGIC;

  self->ttp_open = 0;
  self->ttp_connect = 0;
  self->rname[0] = '\0';
  self->rdaddr = DEV_ADDR_ANY;
  self->rsaddr = DEV_ADDR_ANY;
  self->daddr = DEV_ADDR_ANY;
  self->saddr = DEV_ADDR_ANY;
  self->max_sdu_size_rx = TTP_SAR_UNBOUND;


  self->ckey = irlmp_register_client(0, ((void*)0), ((void*)0), ((void*)0));



  self->mask = irlmp_service_to_hint(S_LAN);

  self->tx_flow = FLOW_START;

  INIT_WORK(&self->disconnect_work, irnet_ppp_disconnect);

  DEXIT(IRDA_SOCK_TRACE, "\n");
  return(0);
}
