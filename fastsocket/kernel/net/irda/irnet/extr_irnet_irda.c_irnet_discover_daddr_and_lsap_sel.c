
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int disco_number; int disco_index; int ttp_connect; int * discoveries; int * iriap; int daddr; int mask; } ;
typedef TYPE_1__ irnet_socket ;


 int DEBUG (int ,char*,int *,int) ;
 int DENTER (int ,char*,TYPE_1__*) ;
 int DEV_ADDR_ANY ;
 int DEXIT (int ,char*) ;
 int DISCOVERY_DEFAULT_SLOTS ;
 int DRETURN (int ,int ,char*) ;
 int ENETUNREACH ;
 int IRDA_SR_INFO ;
 int IRDA_SR_TRACE ;
 int clear_bit (int ,int *) ;
 int iriap_close (int *) ;
 int * irlmp_get_discoveries (int*,int ,int ) ;
 int irnet_discover_next_daddr (TYPE_1__*) ;
 int kfree (int *) ;

__attribute__((used)) static inline int
irnet_discover_daddr_and_lsap_sel(irnet_socket * self)
{
  int ret;

  DENTER(IRDA_SR_TRACE, "(self=0x%p)\n", self);


  self->discoveries = irlmp_get_discoveries(&self->disco_number, self->mask,
         DISCOVERY_DEFAULT_SLOTS);


  if(self->discoveries == ((void*)0))
    {
      self->disco_number = -1;
      clear_bit(0, &self->ttp_connect);
      DRETURN(-ENETUNREACH, IRDA_SR_INFO, "No Cachelog...\n");
    }
  DEBUG(IRDA_SR_INFO, "Got the log (0x%p), size is %d\n",
 self->discoveries, self->disco_number);


  self->disco_index = -1;
  self->daddr = DEV_ADDR_ANY;


  ret = irnet_discover_next_daddr(self);
  if(ret)
    {

      if(self->iriap)
 iriap_close(self->iriap);
      self->iriap = ((void*)0);


      kfree(self->discoveries);
      self->discoveries = ((void*)0);

      clear_bit(0, &self->ttp_connect);
      DRETURN(-ENETUNREACH, IRDA_SR_INFO, "Cachelog empty...\n");
    }



  DEXIT(IRDA_SR_TRACE, "\n");
  return(0);
}
