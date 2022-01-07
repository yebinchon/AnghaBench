
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct rfcomm_session {int flags; } ;
struct rfcomm_mcc {int len; int type; } ;


 int BT_DBG (char*,struct rfcomm_session*,int,int) ;
 int BT_ERR (char*,int) ;
 int RFCOMM_TX_THROTTLED ;
 int __get_mcc_len (int ) ;
 int __get_mcc_type (int ) ;
 int __test_cr (int ) ;
 int clear_bit (int ,int *) ;
 int rfcomm_recv_msc (struct rfcomm_session*,int,struct sk_buff*) ;
 int rfcomm_recv_pn (struct rfcomm_session*,int,struct sk_buff*) ;
 int rfcomm_recv_rls (struct rfcomm_session*,int,struct sk_buff*) ;
 int rfcomm_recv_rpn (struct rfcomm_session*,int,int,struct sk_buff*) ;
 int rfcomm_send_fcoff (struct rfcomm_session*,int ) ;
 int rfcomm_send_fcon (struct rfcomm_session*,int ) ;
 int rfcomm_send_nsc (struct rfcomm_session*,int,int) ;
 int rfcomm_send_test (struct rfcomm_session*,int ,scalar_t__,int ) ;
 int set_bit (int ,int *) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static int rfcomm_recv_mcc(struct rfcomm_session *s, struct sk_buff *skb)
{
 struct rfcomm_mcc *mcc = (void *) skb->data;
 u8 type, cr, len;

 cr = __test_cr(mcc->type);
 type = __get_mcc_type(mcc->type);
 len = __get_mcc_len(mcc->len);

 BT_DBG("%p type 0x%x cr %d", s, type, cr);

 skb_pull(skb, 2);

 switch (type) {
 case 131:
  rfcomm_recv_pn(s, cr, skb);
  break;

 case 129:
  rfcomm_recv_rpn(s, cr, len, skb);
  break;

 case 130:
  rfcomm_recv_rls(s, cr, skb);
  break;

 case 133:
  rfcomm_recv_msc(s, cr, skb);
  break;

 case 135:
  if (cr) {
   set_bit(RFCOMM_TX_THROTTLED, &s->flags);
   rfcomm_send_fcoff(s, 0);
  }
  break;

 case 134:
  if (cr) {
   clear_bit(RFCOMM_TX_THROTTLED, &s->flags);
   rfcomm_send_fcon(s, 0);
  }
  break;

 case 128:
  if (cr)
   rfcomm_send_test(s, 0, skb->data, skb->len);
  break;

 case 132:
  break;

 default:
  BT_ERR("Unknown control type 0x%02x", type);
  rfcomm_send_nsc(s, cr, type);
  break;
 }
 return 0;
}
