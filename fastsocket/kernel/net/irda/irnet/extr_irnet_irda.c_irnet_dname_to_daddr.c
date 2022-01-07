
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct irda_device_info {int daddr; int info; } ;
struct TYPE_4__ {int rname; int daddr; } ;
typedef TYPE_1__ irnet_socket ;


 int DEBUG (int ,char*,int ,...) ;
 int DENTER (int ,char*,TYPE_1__*) ;
 int DEXIT (int ,char*) ;
 int DISCOVERY_DEFAULT_SLOTS ;
 int DRETURN (int ,int ,char*) ;
 int EADDRNOTAVAIL ;
 int ENETUNREACH ;
 int IRDA_SR_INFO ;
 int IRDA_SR_TRACE ;
 int NICKNAME_MAX_LEN ;
 struct irda_device_info* irlmp_get_discoveries (int*,int,int ) ;
 int kfree (struct irda_device_info*) ;
 int strncmp (int ,int ,int ) ;

__attribute__((used)) static inline int
irnet_dname_to_daddr(irnet_socket * self)
{
  struct irda_device_info *discoveries;
  int number;
  int i;

  DENTER(IRDA_SR_TRACE, "(self=0x%p)\n", self);


  discoveries = irlmp_get_discoveries(&number, 0xffff,
          DISCOVERY_DEFAULT_SLOTS);

  if(discoveries == ((void*)0))
    DRETURN(-ENETUNREACH, IRDA_SR_INFO, "Cachelog empty...\n");






  for(i = 0; i < number; i++)
    {

      if(!strncmp(discoveries[i].info, self->rname, NICKNAME_MAX_LEN))
 {

   self->daddr = discoveries[i].daddr;
   DEBUG(IRDA_SR_INFO, "discovered device ``%s'' at address 0x%08x.\n",
  self->rname, self->daddr);
   kfree(discoveries);
   DEXIT(IRDA_SR_TRACE, "\n");
   return 0;
 }
    }

  DEBUG(IRDA_SR_INFO, "cannot discover device ``%s'' !!!\n", self->rname);
  kfree(discoveries);
  return(-EADDRNOTAVAIL);
}
