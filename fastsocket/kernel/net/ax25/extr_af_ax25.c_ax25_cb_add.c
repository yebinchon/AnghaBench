
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ax25_node; } ;
typedef TYPE_1__ ax25_cb ;


 int ax25_cb_hold (TYPE_1__*) ;
 int ax25_list ;
 int ax25_list_lock ;
 int hlist_add_head (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ax25_cb_add(ax25_cb *ax25)
{
 spin_lock_bh(&ax25_list_lock);
 ax25_cb_hold(ax25);
 hlist_add_head(&ax25->ax25_node, &ax25_list);
 spin_unlock_bh(&ax25_list_lock);
}
