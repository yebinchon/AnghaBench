
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int res_nodeid; } ;


 int RSB_NEW_MASTER ;
 int RSB_NEW_MASTER2 ;
 int lock_rsb (struct dlm_rsb*) ;
 int rsb_set_flag (struct dlm_rsb*,int ) ;
 int set_master_lkbs (struct dlm_rsb*) ;
 int unlock_rsb (struct dlm_rsb*) ;

__attribute__((used)) static void set_new_master(struct dlm_rsb *r, int nodeid)
{
 lock_rsb(r);
 r->res_nodeid = nodeid;
 set_master_lkbs(r);
 rsb_set_flag(r, RSB_NEW_MASTER);
 rsb_set_flag(r, RSB_NEW_MASTER2);
 unlock_rsb(r);
}
