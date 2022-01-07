
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp {int nbmutex; } ;


 int __wlp_neighbors_release (struct wlp*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static
void wlp_neighbors_release(struct wlp *wlp)
{
 mutex_lock(&wlp->nbmutex);
 __wlp_neighbors_release(wlp);
 mutex_unlock(&wlp->nbmutex);
}
