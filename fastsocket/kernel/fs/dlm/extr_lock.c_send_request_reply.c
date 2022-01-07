
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int dummy; } ;
struct dlm_lkb {int dummy; } ;


 int DLM_MSG_REQUEST_REPLY ;
 int send_common_reply (struct dlm_rsb*,struct dlm_lkb*,int ,int) ;

__attribute__((used)) static int send_request_reply(struct dlm_rsb *r, struct dlm_lkb *lkb, int rv)
{
 return send_common_reply(r, lkb, DLM_MSG_REQUEST_REPLY, rv);
}
