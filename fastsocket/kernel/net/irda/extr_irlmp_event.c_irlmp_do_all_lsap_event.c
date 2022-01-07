
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lsap_cb {int dummy; } ;
typedef int hashbin_t ;
typedef int IRLMP_EVENT ;


 int * hashbin_find_next (int *,long,int *,void*) ;
 scalar_t__ hashbin_get_first (int *) ;
 int irlmp_do_lsap_event (struct lsap_cb*,int ,int *) ;

__attribute__((used)) static inline void
irlmp_do_all_lsap_event(hashbin_t * lsap_hashbin,
   IRLMP_EVENT event)
{
 struct lsap_cb *lsap;
 struct lsap_cb *lsap_next;
 lsap = (struct lsap_cb *) hashbin_get_first(lsap_hashbin);

 while (((void*)0) != hashbin_find_next(lsap_hashbin,
      (long) lsap,
      ((void*)0),
      (void *) &lsap_next) ) {
  irlmp_do_lsap_event(lsap, event, ((void*)0));
  lsap = lsap_next;
 }
}
