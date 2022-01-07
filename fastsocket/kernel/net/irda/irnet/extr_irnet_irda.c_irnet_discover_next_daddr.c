
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t disco_index; size_t disco_number; TYPE_1__* discoveries; int * iriap; } ;
typedef TYPE_2__ irnet_socket ;
struct TYPE_5__ {int daddr; int saddr; } ;


 int ENOMEM ;
 int IAS_CLIENT ;
 int IRNET_IAS_VALUE ;
 int IRNET_SERVICE_NAME ;
 int LSAP_ANY ;
 int iriap_close (int *) ;
 int iriap_getvaluebyclass_request (int *,int ,int ,int ,int ) ;
 int * iriap_open (int ,int ,TYPE_2__*,int ) ;
 int irnet_discovervalue_confirm ;

__attribute__((used)) static inline int
irnet_discover_next_daddr(irnet_socket * self)
{


  if(self->iriap)
    {
      iriap_close(self->iriap);
      self->iriap = ((void*)0);
    }

  self->iriap = iriap_open(LSAP_ANY, IAS_CLIENT, self,
      irnet_discovervalue_confirm);
  if(self->iriap == ((void*)0))
    return -ENOMEM;


  self->disco_index++;


  if(self->disco_index < self->disco_number)
    {

      iriap_getvaluebyclass_request(self->iriap,
        self->discoveries[self->disco_index].saddr,
        self->discoveries[self->disco_index].daddr,
        IRNET_SERVICE_NAME, IRNET_IAS_VALUE);



      return(0);
    }
  else
    return(1);
}
