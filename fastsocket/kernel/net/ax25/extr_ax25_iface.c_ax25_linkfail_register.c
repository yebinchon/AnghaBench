
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ax25_linkfail {int lf_node; } ;


 int ax25_linkfail_list ;
 int hlist_add_head (int *,int *) ;
 int linkfail_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ax25_linkfail_register(struct ax25_linkfail *lf)
{
 spin_lock_bh(&linkfail_lock);
 hlist_add_head(&lf->lf_node, &ax25_linkfail_list);
 spin_unlock_bh(&linkfail_lock);
}
