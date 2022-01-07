
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidp_session {int dummy; } ;


 int BT_DBG (char*,struct hidp_session*,unsigned char) ;
 int const HIDP_CTRL_SOFT_RESET ;







 int const HIDP_TRANS_HANDSHAKE ;
 int const HIDP_TRANS_HID_CONTROL ;
 int __hidp_send_ctrl_message (struct hidp_session*,int const,int *,int ) ;

__attribute__((used)) static void hidp_process_handshake(struct hidp_session *session,
     unsigned char param)
{
 BT_DBG("session %p param 0x%02x", session, param);

 switch (param) {
 case 128:

  break;

 case 129:
 case 132:
 case 130:
 case 133:

  break;

 case 131:
  break;

 case 134:


  __hidp_send_ctrl_message(session,
   HIDP_TRANS_HID_CONTROL | HIDP_CTRL_SOFT_RESET, ((void*)0), 0);
  break;

 default:
  __hidp_send_ctrl_message(session,
   HIDP_TRANS_HANDSHAKE | 133, ((void*)0), 0);
  break;
 }
}
