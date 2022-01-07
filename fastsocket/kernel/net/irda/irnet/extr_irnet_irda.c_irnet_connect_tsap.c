
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ttp_connect; int max_sdu_size_rx; int daddr; int rsaddr; int dtsap_sel; int tsap; } ;
typedef TYPE_1__ irnet_socket ;


 int DENTER (int ,char*,TYPE_1__*) ;
 int DERROR (int ,char*) ;
 int DEXIT (int ,char*) ;
 int IRDA_SR_ERROR ;
 int IRDA_SR_TRACE ;
 int clear_bit (int ,int *) ;
 int irnet_open_tsap (TYPE_1__*) ;
 int irttp_connect_request (int ,int ,int ,int ,int *,int ,int *) ;

__attribute__((used)) static inline int
irnet_connect_tsap(irnet_socket * self)
{
  int err;

  DENTER(IRDA_SR_TRACE, "(self=0x%p)\n", self);


  err = irnet_open_tsap(self);
  if(err != 0)
    {
      clear_bit(0, &self->ttp_connect);
      DERROR(IRDA_SR_ERROR, "connect aborted!\n");
      return(err);
    }


  err = irttp_connect_request(self->tsap, self->dtsap_sel,
         self->rsaddr, self->daddr, ((void*)0),
         self->max_sdu_size_rx, ((void*)0));
  if(err != 0)
    {
      clear_bit(0, &self->ttp_connect);
      DERROR(IRDA_SR_ERROR, "connect aborted!\n");
      return(err);
    }






  DEXIT(IRDA_SR_TRACE, "\n");
  return(err);
}
