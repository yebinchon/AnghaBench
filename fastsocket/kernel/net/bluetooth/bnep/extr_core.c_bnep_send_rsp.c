
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct bnep_session {int dummy; } ;
struct bnep_control_rsp {int resp; int ctrl; int type; } ;
typedef int rsp ;


 int BNEP_CONTROL ;
 int bnep_send (struct bnep_session*,struct bnep_control_rsp*,int) ;
 int htons (int ) ;

__attribute__((used)) static int bnep_send_rsp(struct bnep_session *s, u8 ctrl, u16 resp)
{
 struct bnep_control_rsp rsp;
 rsp.type = BNEP_CONTROL;
 rsp.ctrl = ctrl;
 rsp.resp = htons(resp);
 return bnep_send(s, &rsp, sizeof(rsp));
}
