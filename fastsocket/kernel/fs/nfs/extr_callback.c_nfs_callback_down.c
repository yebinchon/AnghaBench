
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_callback_data {scalar_t__ users; int * task; int * rqst; int * serv; } ;


 int kthread_stop (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct nfs_callback_data* nfs_callback_info ;
 int nfs_callback_mutex ;
 int svc_exit_thread (int *) ;

void nfs_callback_down(int minorversion)
{
 struct nfs_callback_data *cb_info = &nfs_callback_info[minorversion];

 mutex_lock(&nfs_callback_mutex);
 cb_info->users--;
 if (cb_info->users == 0 && cb_info->task != ((void*)0)) {
  kthread_stop(cb_info->task);
  svc_exit_thread(cb_info->rqst);
  cb_info->serv = ((void*)0);
  cb_info->rqst = ((void*)0);
  cb_info->task = ((void*)0);
 }
 mutex_unlock(&nfs_callback_mutex);
}
