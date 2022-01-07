
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp {int * rc; int mutex; int * dev_info; int eda; int uwb_notifs_handler; int pal; } ;


 int kfree (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uwb_notifs_deregister (int *,int *) ;
 int uwb_pal_unregister (int *) ;
 int wlp_eda_release (int *) ;
 int wlp_neighbors_release (struct wlp*) ;

void wlp_remove(struct wlp *wlp)
{
 wlp_neighbors_release(wlp);
 uwb_pal_unregister(&wlp->pal);
 uwb_notifs_deregister(wlp->rc, &wlp->uwb_notifs_handler);
 wlp_eda_release(&wlp->eda);
 mutex_lock(&wlp->mutex);
 if (wlp->dev_info != ((void*)0))
  kfree(wlp->dev_info);
 mutex_unlock(&wlp->mutex);
 wlp->rc = ((void*)0);
}
