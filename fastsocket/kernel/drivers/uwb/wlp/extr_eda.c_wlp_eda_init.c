
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp_eda {int lock; int cache; } ;


 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;

void wlp_eda_init(struct wlp_eda *eda)
{
 INIT_LIST_HEAD(&eda->cache);
 spin_lock_init(&eda->lock);
}
