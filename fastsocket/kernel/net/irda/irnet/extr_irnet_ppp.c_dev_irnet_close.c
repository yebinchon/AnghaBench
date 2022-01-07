
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irnet_socket {int chan; scalar_t__ ppp_open; } ;
struct inode {int dummy; } ;
struct file {int * private_data; } ;
typedef struct irnet_socket irnet_socket ;


 int DABORT (int ,int ,int ,char*) ;
 int DENTER (int ,char*,struct file*,struct irnet_socket*) ;
 int DERROR (int ,char*) ;
 int DEXIT (int ,char*) ;
 int FS_ERROR ;
 int FS_TRACE ;
 int irda_irnet_destroy (struct irnet_socket*) ;
 int kfree (struct irnet_socket*) ;
 int ppp_unregister_channel (int *) ;

__attribute__((used)) static int
dev_irnet_close(struct inode * inode,
  struct file * file)
{
  irnet_socket * ap = (struct irnet_socket *) file->private_data;

  DENTER(FS_TRACE, "(file=0x%p, ap=0x%p)\n",
  file, ap);
  DABORT(ap == ((void*)0), 0, FS_ERROR, "ap is NULL !!!\n");


  file->private_data = ((void*)0);


  irda_irnet_destroy(ap);


  if(ap->ppp_open)
    {
      DERROR(FS_ERROR, "Channel still registered - deregistering !\n");
      ap->ppp_open = 0;
      ppp_unregister_channel(&ap->chan);
    }

  kfree(ap);

  DEXIT(FS_TRACE, "\n");
  return 0;
}
