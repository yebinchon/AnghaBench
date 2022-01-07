
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mtu; int hdrlen; int * ops; struct irnet_socket* private; } ;
struct irnet_socket {int mru; unsigned int* xaccm; unsigned int raccm; int event_index; TYPE_1__ chan; scalar_t__ ppp_open; struct file* file; } ;
struct inode {int dummy; } ;
struct file {struct irnet_socket* private_data; } ;
struct TYPE_4__ {int index; } ;


 int CAP_NET_ADMIN ;
 int DABORT (int ,int ,int ,char*) ;
 int DENTER (int ,char*,struct file*) ;
 int DERROR (int ,char*) ;
 int DEXIT (int ,char*,struct irnet_socket*) ;
 int ENOMEM ;
 int EPERM ;
 int FS_ERROR ;
 int FS_TRACE ;
 int GFP_KERNEL ;
 int PPP_HDRLEN ;
 int TTP_MAX_HEADER ;
 int capable (int ) ;
 int irda_irnet_create (struct irnet_socket*) ;
 TYPE_2__ irnet_events ;
 int irnet_ppp_ops ;
 int kfree (struct irnet_socket*) ;
 struct irnet_socket* kzalloc (int,int ) ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static int
dev_irnet_open(struct inode * inode,
        struct file * file)
{
  struct irnet_socket * ap;
  int err;

  DENTER(FS_TRACE, "(file=0x%p)\n", file);
  ap = kzalloc(sizeof(*ap), GFP_KERNEL);
  DABORT(ap == ((void*)0), -ENOMEM, FS_ERROR, "Can't allocate struct irnet...\n");

  lock_kernel();

  ap->file = file;


  ap->ppp_open = 0;
  ap->chan.private = ap;
  ap->chan.ops = &irnet_ppp_ops;
  ap->chan.mtu = (2048 - TTP_MAX_HEADER - 2 - PPP_HDRLEN);
  ap->chan.hdrlen = 2 + TTP_MAX_HEADER;

  ap->mru = (2048 - TTP_MAX_HEADER - 2 - PPP_HDRLEN);
  ap->xaccm[0] = ~0U;
  ap->xaccm[3] = 0x60000000U;
  ap->raccm = ~0U;


  err = irda_irnet_create(ap);
  if(err)
    {
      DERROR(FS_ERROR, "Can't setup IrDA link...\n");
      kfree(ap);
      unlock_kernel();
      return err;
    }


  ap->event_index = irnet_events.index;


  file->private_data = ap;

  DEXIT(FS_TRACE, " - ap=0x%p\n", ap);
  unlock_kernel();
  return 0;
}
