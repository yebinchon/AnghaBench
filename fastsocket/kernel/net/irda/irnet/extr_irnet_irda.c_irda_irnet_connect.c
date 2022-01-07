
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * q_next; } ;
struct TYPE_10__ {char* rname; scalar_t__ rdaddr; scalar_t__ daddr; TYPE_1__ q; int * tsap; int * iriap; int ttp_connect; } ;
typedef TYPE_2__ irnet_socket ;
typedef int irda_queue_t ;
struct TYPE_11__ {int spinlock; int list; scalar_t__ running; } ;


 int DEBUG (int ,char*,char*) ;
 int DENTER (int ,char*,TYPE_2__*) ;
 int DERROR (int ,char*) ;
 scalar_t__ DEV_ADDR_ANY ;
 int DEXIT (int ,char*) ;
 int DRETURN (int,int ,char*) ;
 int EBUSY ;
 int IRDA_SOCK_ERROR ;
 int IRDA_SOCK_INFO ;
 int IRDA_SOCK_TRACE ;
 int hashbin_insert (int ,int *,int ,char*) ;
 int irnet_discover_daddr_and_lsap_sel (TYPE_2__*) ;
 int irnet_dname_to_daddr (TYPE_2__*) ;
 int irnet_find_lsap_sel (TYPE_2__*) ;
 TYPE_3__ irnet_server ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

int
irda_irnet_connect(irnet_socket * self)
{
  int err;

  DENTER(IRDA_SOCK_TRACE, "(self=0x%p)\n", self);





  if(test_and_set_bit(0, &self->ttp_connect))
    DRETURN(-EBUSY, IRDA_SOCK_INFO, "Already connecting...\n");
  if((self->iriap != ((void*)0)) || (self->tsap != ((void*)0)))
    DERROR(IRDA_SOCK_ERROR, "Socket not cleaned up...\n");





  if((irnet_server.running) && (self->q.q_next == ((void*)0)))
    {
      spin_lock_bh(&irnet_server.spinlock);
      hashbin_insert(irnet_server.list, (irda_queue_t *) self, 0, self->rname);
      spin_unlock_bh(&irnet_server.spinlock);
      DEBUG(IRDA_SOCK_INFO, "Inserted ``%s'' in hashbin...\n", self->rname);
    }


  if((self->rdaddr == DEV_ADDR_ANY) && (self->rname[0] == '\0'))
    {

      if((err = irnet_discover_daddr_and_lsap_sel(self)) != 0)
 DRETURN(err, IRDA_SOCK_INFO, "auto-connect failed!\n");

    }
  else
    {

      if(self->rdaddr == DEV_ADDR_ANY)
 {
   if((err = irnet_dname_to_daddr(self)) != 0)
     DRETURN(err, IRDA_SOCK_INFO, "name connect failed!\n");
 }
      else

 self->daddr = self->rdaddr;


      irnet_find_lsap_sel(self);

    }





  DEXIT(IRDA_SOCK_TRACE, "\n");
  return(0);
}
