
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_comm {scalar_t__ vc_seq; int * vc_sb; int vc_waitq; int vc_processing; int vc_pending; int vc_inuse; } ;
struct inode {int dummy; } ;
struct file {struct venus_comm* private_data; } ;


 int EBUSY ;
 int ENODEV ;
 int INIT_LIST_HEAD (int *) ;
 int MAX_CODADEVS ;
 struct venus_comm* coda_comms ;
 int iminor (struct inode*) ;
 int init_waitqueue_head (int *) ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static int coda_psdev_open(struct inode * inode, struct file * file)
{
 struct venus_comm *vcp;
 int idx, err;

 idx = iminor(inode);
 if (idx < 0 || idx >= MAX_CODADEVS)
  return -ENODEV;

 lock_kernel();

 err = -EBUSY;
 vcp = &coda_comms[idx];
 if (!vcp->vc_inuse) {
  vcp->vc_inuse++;

  INIT_LIST_HEAD(&vcp->vc_pending);
  INIT_LIST_HEAD(&vcp->vc_processing);
  init_waitqueue_head(&vcp->vc_waitq);
  vcp->vc_sb = ((void*)0);
  vcp->vc_seq = 0;

  file->private_data = vcp;
  err = 0;
 }

 unlock_kernel();
 return err;
}
