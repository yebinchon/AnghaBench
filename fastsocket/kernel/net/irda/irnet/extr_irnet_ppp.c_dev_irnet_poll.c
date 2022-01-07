
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irnet_socket {int ppp_open; } ;
struct file {scalar_t__ private_data; } ;
typedef int poll_table ;
typedef struct irnet_socket irnet_socket ;


 int DABORT (int ,unsigned int,int ,char*) ;
 int DENTER (int ,char*,struct file*,struct irnet_socket*) ;
 int DEXIT (int ,char*,unsigned int) ;
 int FS_ERROR ;
 int FS_TRACE ;
 unsigned int POLLOUT ;
 unsigned int POLLWRNORM ;
 unsigned int irnet_ctrl_poll (struct irnet_socket*,struct file*,int *) ;

__attribute__((used)) static unsigned int
dev_irnet_poll(struct file * file,
        poll_table * wait)
{
  irnet_socket * ap = (struct irnet_socket *) file->private_data;
  unsigned int mask;

  DENTER(FS_TRACE, "(file=0x%p, ap=0x%p)\n",
  file, ap);

  mask = POLLOUT | POLLWRNORM;
  DABORT(ap == ((void*)0), mask, FS_ERROR, "ap is NULL !!!\n");


  if(!ap->ppp_open)
    mask |= irnet_ctrl_poll(ap, file, wait);

  DEXIT(FS_TRACE, " - mask=0x%X\n", mask);
  return(mask);
}
