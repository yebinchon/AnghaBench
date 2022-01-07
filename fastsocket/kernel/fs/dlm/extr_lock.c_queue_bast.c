
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int dummy; } ;
struct dlm_lkb {int dummy; } ;


 int DLM_CB_BAST ;
 int dlm_add_ast (struct dlm_lkb*,int ,int,int ,int ) ;
 scalar_t__ is_master_copy (struct dlm_lkb*) ;
 int send_bast (struct dlm_rsb*,struct dlm_lkb*,int) ;

__attribute__((used)) static void queue_bast(struct dlm_rsb *r, struct dlm_lkb *lkb, int rqmode)
{
 if (is_master_copy(lkb)) {
  send_bast(r, lkb, rqmode);
 } else {
  dlm_add_ast(lkb, DLM_CB_BAST, rqmode, 0, 0);
 }
}
