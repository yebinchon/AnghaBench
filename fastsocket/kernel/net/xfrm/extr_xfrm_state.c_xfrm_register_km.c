
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_mgr {int list; } ;


 int list_add_tail (int *,int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;
 int xfrm_km_list ;
 int xfrm_km_lock ;

int xfrm_register_km(struct xfrm_mgr *km)
{
 write_lock_bh(&xfrm_km_lock);
 list_add_tail(&km->list, &xfrm_km_list);
 write_unlock_bh(&xfrm_km_lock);
 return 0;
}
