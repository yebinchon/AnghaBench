
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int res_convertqueue; int res_waitqueue; } ;


 int RSB_RECOVER_GRANT ;
 int list_empty (int *) ;
 int rsb_set_flag (struct dlm_rsb*,int ) ;

__attribute__((used)) static void recover_grant(struct dlm_rsb *r)
{
 if (!list_empty(&r->res_waitqueue) || !list_empty(&r->res_convertqueue))
  rsb_set_flag(r, RSB_RECOVER_GRANT);
}
