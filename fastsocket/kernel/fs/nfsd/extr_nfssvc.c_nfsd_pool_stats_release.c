
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfsd_mutex ;
 int nfsd_serv ;
 int seq_release (struct inode*,struct file*) ;
 int svc_destroy (int ) ;

int nfsd_pool_stats_release(struct inode *inode, struct file *file)
{
 int ret = seq_release(inode, file);
 mutex_lock(&nfsd_mutex);

 svc_destroy(nfsd_serv);
 mutex_unlock(&nfsd_mutex);
 return ret;
}
