
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ctxt {int opened; int lock; int * ept; } ;
struct inode {int dummy; } ;
struct file {struct snd_ctxt* private_data; } ;


 int EBUSY ;
 scalar_t__ IS_ERR (int *) ;
 int MSM_RPC_UNINTERRUPTIBLE ;
 int PTR_ERR (int *) ;
 int RPC_SND_PROG ;
 int RPC_SND_VERS ;
 int * msm_rpc_connect (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 struct snd_ctxt the_snd ;

__attribute__((used)) static int snd_open(struct inode *inode, struct file *file)
{
 struct snd_ctxt *snd = &the_snd;
 int rc = 0;

 mutex_lock(&snd->lock);
 if (snd->opened == 0) {
  if (snd->ept == ((void*)0)) {
   snd->ept = msm_rpc_connect(RPC_SND_PROG, RPC_SND_VERS,
     MSM_RPC_UNINTERRUPTIBLE);
   if (IS_ERR(snd->ept)) {
    rc = PTR_ERR(snd->ept);
    snd->ept = ((void*)0);
    pr_err("snd: failed to connect snd svc\n");
    goto err;
   }
  }
  file->private_data = snd;
  snd->opened = 1;
 } else {
  pr_err("snd already opened.\n");
  rc = -EBUSY;
 }

err:
 mutex_unlock(&snd->lock);
 return rc;
}
