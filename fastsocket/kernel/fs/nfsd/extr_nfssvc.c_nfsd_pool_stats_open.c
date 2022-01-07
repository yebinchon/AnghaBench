
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int ENODEV ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfsd_mutex ;
 int * nfsd_serv ;
 int svc_get (int *) ;
 int svc_pool_stats_open (int *,struct file*) ;

int nfsd_pool_stats_open(struct inode *inode, struct file *file)
{
 int ret;
 mutex_lock(&nfsd_mutex);
 if (nfsd_serv == ((void*)0)) {
  mutex_unlock(&nfsd_mutex);
  return -ENODEV;
 }

 svc_get(nfsd_serv);
 ret = svc_pool_stats_open(nfsd_serv, file);
 mutex_unlock(&nfsd_mutex);
 return ret;
}
