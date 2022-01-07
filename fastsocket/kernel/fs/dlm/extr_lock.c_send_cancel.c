
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int dummy; } ;
struct dlm_lkb {int dummy; } ;


 int DLM_MSG_CANCEL ;
 int send_common (struct dlm_rsb*,struct dlm_lkb*,int ) ;

__attribute__((used)) static int send_cancel(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
 return send_common(r, lkb, DLM_MSG_CANCEL);
}
