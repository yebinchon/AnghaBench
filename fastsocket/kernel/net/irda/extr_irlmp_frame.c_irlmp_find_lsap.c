
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct lsap_cb {scalar_t__ slsap_sel; scalar_t__ dlsap_sel; } ;
struct TYPE_6__ {scalar_t__ slsap_sel; scalar_t__ dlsap_sel; struct lsap_cb* lsap; scalar_t__ valid; } ;
struct lap_cb {TYPE_1__ cache; } ;
struct TYPE_7__ {int hb_spinlock; } ;
typedef TYPE_2__ hashbin_t ;
typedef scalar_t__ __u8 ;


 int CONNECT_CMD ;
 scalar_t__ LSAP_ANY ;
 scalar_t__ hashbin_get_first (TYPE_2__*) ;
 scalar_t__ hashbin_get_next (TYPE_2__*) ;
 int irlmp_update_cache (struct lap_cb*,struct lsap_cb*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct lsap_cb *irlmp_find_lsap(struct lap_cb *self, __u8 dlsap_sel,
           __u8 slsap_sel, int status,
           hashbin_t *queue)
{
 struct lsap_cb *lsap;
 unsigned long flags;
 spin_lock_irqsave(&queue->hb_spinlock, flags);

 lsap = (struct lsap_cb *) hashbin_get_first(queue);
 while (lsap != ((void*)0)) {






  if ((status == CONNECT_CMD) &&
      (lsap->slsap_sel == slsap_sel) &&
      (lsap->dlsap_sel == LSAP_ANY)) {


   lsap->dlsap_sel = dlsap_sel;
   break;
  }



  if ((lsap->slsap_sel == slsap_sel) &&
      (lsap->dlsap_sel == dlsap_sel))
   break;

  lsap = (struct lsap_cb *) hashbin_get_next(queue);
 }




 spin_unlock_irqrestore(&queue->hb_spinlock, flags);


 return lsap;
}
