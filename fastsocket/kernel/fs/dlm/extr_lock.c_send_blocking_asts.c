
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int res_grantqueue; } ;
struct dlm_lkb {int dummy; } ;


 int send_bast_queue (struct dlm_rsb*,int *,struct dlm_lkb*) ;

__attribute__((used)) static void send_blocking_asts(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
 send_bast_queue(r, &r->res_grantqueue, lkb);
}
