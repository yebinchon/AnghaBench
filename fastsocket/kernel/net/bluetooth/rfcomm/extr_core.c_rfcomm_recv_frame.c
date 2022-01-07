
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ data; int tail; int len; } ;
struct rfcomm_session {int dummy; } ;
struct rfcomm_hdr {int ctrl; int len; int addr; } ;


 int BT_ERR (char*,...) ;
 int EILSEQ ;





 scalar_t__ __check_fcs (scalar_t__,int,int) ;
 int __get_dlci (int ) ;
 int __get_type (int ) ;
 scalar_t__ __test_ea (int ) ;
 int __test_pf (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int rfcomm_recv_data (struct rfcomm_session*,int,int ,struct sk_buff*) ;
 int rfcomm_recv_disc (struct rfcomm_session*,int) ;
 int rfcomm_recv_dm (struct rfcomm_session*,int) ;
 int rfcomm_recv_mcc (struct rfcomm_session*,struct sk_buff*) ;
 int rfcomm_recv_sabm (struct rfcomm_session*,int) ;
 int rfcomm_recv_ua (struct rfcomm_session*,int) ;
 int skb_pull (struct sk_buff*,int) ;
 scalar_t__ skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static int rfcomm_recv_frame(struct rfcomm_session *s, struct sk_buff *skb)
{
 struct rfcomm_hdr *hdr = (void *) skb->data;
 u8 type, dlci, fcs;

 dlci = __get_dlci(hdr->addr);
 type = __get_type(hdr->ctrl);


 skb->len--; skb->tail--;
 fcs = *(u8 *)skb_tail_pointer(skb);

 if (__check_fcs(skb->data, type, fcs)) {
  BT_ERR("bad checksum in packet");
  kfree_skb(skb);
  return -EILSEQ;
 }

 if (__test_ea(hdr->len))
  skb_pull(skb, 3);
 else
  skb_pull(skb, 4);

 switch (type) {
 case 130:
  if (__test_pf(hdr->ctrl))
   rfcomm_recv_sabm(s, dlci);
  break;

 case 132:
  if (__test_pf(hdr->ctrl))
   rfcomm_recv_disc(s, dlci);
  break;

 case 129:
  if (__test_pf(hdr->ctrl))
   rfcomm_recv_ua(s, dlci);
  break;

 case 131:
  rfcomm_recv_dm(s, dlci);
  break;

 case 128:
  if (dlci)
   return rfcomm_recv_data(s, dlci, __test_pf(hdr->ctrl), skb);

  rfcomm_recv_mcc(s, skb);
  break;

 default:
  BT_ERR("Unknown packet type 0x%02x\n", type);
  break;
 }
 kfree_skb(skb);
 return 0;
}
