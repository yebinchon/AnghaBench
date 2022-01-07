
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ daddr; char* rname; scalar_t__ rdaddr; scalar_t__ ppp_open; int ttp_open; int tsap; int saddr; } ;
typedef TYPE_1__ irnet_socket ;
struct TYPE_10__ {int spinlock; int list; } ;


 int DEBUG (int ,char*,TYPE_1__*,...) ;
 int DENTER (int ,char*,TYPE_1__*) ;
 scalar_t__ DEV_ADDR_ANY ;
 int DEXIT (int ,char*,TYPE_1__*) ;
 int IRDA_SERV_INFO ;
 int IRDA_SERV_TRACE ;
 scalar_t__ hashbin_find (int ,int ,char*) ;
 scalar_t__ hashbin_get_first (int ) ;
 scalar_t__ hashbin_get_next (int ) ;
 int irnet_daddr_to_dname (TYPE_1__*) ;
 TYPE_2__ irnet_server ;
 scalar_t__ irttp_get_daddr (int ) ;
 int irttp_get_saddr (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline irnet_socket *
irnet_find_socket(irnet_socket * self)
{
  irnet_socket * new = (irnet_socket *) ((void*)0);
  int err;

  DENTER(IRDA_SERV_TRACE, "(self=0x%p)\n", self);


  self->daddr = irttp_get_daddr(self->tsap);
  self->saddr = irttp_get_saddr(self->tsap);


  err = irnet_daddr_to_dname(self);


  spin_lock_bh(&irnet_server.spinlock);



  if(err == 0)
    {
      new = (irnet_socket *) hashbin_find(irnet_server.list,
       0, self->rname);
      if(new)
 DEBUG(IRDA_SERV_INFO, "Socket 0x%p matches rname ``%s''.\n",
       new, new->rname);
    }





  if(new == (irnet_socket *) ((void*)0))
    {
      new = (irnet_socket *) hashbin_get_first(irnet_server.list);
      while(new !=(irnet_socket *) ((void*)0))
 {

   if((new->rdaddr == self->daddr) || (new->daddr == self->daddr))
     {

       DEBUG(IRDA_SERV_INFO, "Socket 0x%p matches daddr %#08x.\n",
      new, self->daddr);
       break;
     }
   new = (irnet_socket *) hashbin_get_next(irnet_server.list);
 }
    }


  if(new == (irnet_socket *) ((void*)0))
    {
      new = (irnet_socket *) hashbin_get_first(irnet_server.list);
      while(new !=(irnet_socket *) ((void*)0))
 {

   if(!(test_bit(0, &new->ttp_open)) && (new->rdaddr == DEV_ADDR_ANY) &&
      (new->rname[0] == '\0') && (new->ppp_open))
     {

       DEBUG(IRDA_SERV_INFO, "Socket 0x%p is free.\n",
      new);
       break;
     }
   new = (irnet_socket *) hashbin_get_next(irnet_server.list);
 }
    }


  spin_unlock_bh(&irnet_server.spinlock);

  DEXIT(IRDA_SERV_TRACE, " - new = 0x%p\n", new);
  return new;
}
