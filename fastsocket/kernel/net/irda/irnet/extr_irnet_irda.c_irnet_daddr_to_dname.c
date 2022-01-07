
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct irda_device_info {scalar_t__ daddr; int info; } ;
struct TYPE_4__ {scalar_t__ daddr; char* rname; } ;
typedef TYPE_1__ irnet_socket ;


 int DEBUG (int ,char*,scalar_t__,char*) ;
 int DENTER (int ,char*,TYPE_1__*) ;
 int DEXIT (int ,char*,...) ;
 int DISCOVERY_DEFAULT_SLOTS ;
 int DRETURN (int ,int ,char*) ;
 int EADDRNOTAVAIL ;
 int ENETUNREACH ;
 int IRDA_SERV_INFO ;
 int IRDA_SERV_TRACE ;
 struct irda_device_info* irlmp_get_discoveries (int*,int,int ) ;
 int kfree (struct irda_device_info*) ;
 int strlcpy (char*,int ,int) ;

__attribute__((used)) static inline int
irnet_daddr_to_dname(irnet_socket * self)
{
  struct irda_device_info *discoveries;
  int number;
  int i;

  DENTER(IRDA_SERV_TRACE, "(self=0x%p)\n", self);


  discoveries = irlmp_get_discoveries(&number, 0xffff,
          DISCOVERY_DEFAULT_SLOTS);

  if (discoveries == ((void*)0))
    DRETURN(-ENETUNREACH, IRDA_SERV_INFO, "Cachelog empty...\n");


  for(i = 0; i < number; i++)
    {

      if(discoveries[i].daddr == self->daddr)
 {

   strlcpy(self->rname, discoveries[i].info, sizeof(self->rname));
   self->rname[sizeof(self->rname) - 1] = '\0';
   DEBUG(IRDA_SERV_INFO, "Device 0x%08x is in fact ``%s''.\n",
  self->daddr, self->rname);
   kfree(discoveries);
   DEXIT(IRDA_SERV_TRACE, "\n");
   return 0;
 }
    }

  DEXIT(IRDA_SERV_INFO, ": cannot discover device 0x%08x !!!\n", self->daddr);
  kfree(discoveries);
  return(-EADDRNOTAVAIL);
}
