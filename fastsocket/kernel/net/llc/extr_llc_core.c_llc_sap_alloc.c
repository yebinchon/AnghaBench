
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct llc_sap {int refcnt; TYPE_1__ sk_list; int state; } ;


 int GFP_ATOMIC ;
 int LLC_SAP_STATE_ACTIVE ;
 int atomic_set (int *,int) ;
 struct llc_sap* kzalloc (int,int ) ;
 int rwlock_init (int *) ;

__attribute__((used)) static struct llc_sap *llc_sap_alloc(void)
{
 struct llc_sap *sap = kzalloc(sizeof(*sap), GFP_ATOMIC);

 if (sap) {

  sap->state = LLC_SAP_STATE_ACTIVE;
  rwlock_init(&sap->sk_list.lock);
  atomic_set(&sap->refcnt, 1);
 }
 return sap;
}
