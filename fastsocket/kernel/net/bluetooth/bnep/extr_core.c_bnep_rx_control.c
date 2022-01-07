
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bnep_session {int dummy; } ;
typedef int pkt ;



 int BNEP_CONTROL ;






 int bnep_ctrl_set_mcfilter (struct bnep_session*,void*,int) ;
 int bnep_ctrl_set_netfilter (struct bnep_session*,void*,int) ;
 int bnep_send (struct bnep_session*,int*,int) ;

__attribute__((used)) static int bnep_rx_control(struct bnep_session *s, void *data, int len)
{
 u8 cmd = *(u8 *)data;
 int err = 0;

 data++; len--;

 switch (cmd) {
 case 134:
 case 129:
 case 128:
 case 131:
 case 133:

  break;

 case 130:
  err = bnep_ctrl_set_netfilter(s, data, len);
  break;

 case 132:
  err = bnep_ctrl_set_mcfilter(s, data, len);
  break;

 default: {
   u8 pkt[3];
   pkt[0] = BNEP_CONTROL;
   pkt[1] = 134;
   pkt[2] = cmd;
   bnep_send(s, pkt, sizeof(pkt));
  }
  break;
 }

 return err;
}
