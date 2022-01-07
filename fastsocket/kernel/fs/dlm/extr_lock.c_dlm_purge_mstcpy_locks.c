
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int res_waitqueue; int res_convertqueue; int res_grantqueue; } ;


 int purge_mstcpy_test ;
 int purge_queue (struct dlm_rsb*,int *,int *) ;

void dlm_purge_mstcpy_locks(struct dlm_rsb *r)
{
 purge_queue(r, &r->res_grantqueue, &purge_mstcpy_test);
 purge_queue(r, &r->res_convertqueue, &purge_mstcpy_test);
 purge_queue(r, &r->res_waitqueue, &purge_mstcpy_test);
}
