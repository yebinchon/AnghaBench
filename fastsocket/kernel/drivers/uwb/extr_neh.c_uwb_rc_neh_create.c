
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int ctx_roll; int ctx_bm; int neh_list; int neh_lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int set_bit (int,int ) ;
 int spin_lock_init (int *) ;

void uwb_rc_neh_create(struct uwb_rc *rc)
{
 spin_lock_init(&rc->neh_lock);
 INIT_LIST_HEAD(&rc->neh_list);
 set_bit(0, rc->ctx_bm);
 set_bit(0xff, rc->ctx_bm);
 rc->ctx_roll = 1;
}
