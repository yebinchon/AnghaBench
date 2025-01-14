
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int len; int data; } ;
struct l2cap_pinfo {int mode; int imtu; int expected_tx_seq; int fcs; } ;
struct l2cap_conn {int chan_list; } ;


 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,...) ;
 int L2CAP_DEFAULT_MAX_PDU_SIZE ;
 int L2CAP_FCS_CRC16 ;



 int __get_txseq (int) ;
 int __is_iframe (int) ;
 int __is_sar_start (int) ;
 int __is_sframe (int) ;
 int bh_unlock_sock (struct sock*) ;
 int get_unaligned_le16 (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int l2cap_check_fcs (struct l2cap_pinfo*,struct sk_buff*) ;
 int l2cap_data_channel_iframe (struct sock*,int,struct sk_buff*) ;
 int l2cap_data_channel_sframe (struct sock*,int,struct sk_buff*) ;
 struct sock* l2cap_get_chan_by_scid (int *,int) ;
 struct l2cap_pinfo* l2cap_pi (struct sock*) ;
 int l2cap_sar_reassembly_sdu (struct sock*,struct sk_buff*,int) ;
 int skb_pull (struct sk_buff*,int) ;
 int sock_queue_rcv_skb (struct sock*,struct sk_buff*) ;

__attribute__((used)) static inline int l2cap_data_channel(struct l2cap_conn *conn, u16 cid, struct sk_buff *skb)
{
 struct sock *sk;
 struct l2cap_pinfo *pi;
 u16 control, len;
 u8 tx_seq;
 int err;

 sk = l2cap_get_chan_by_scid(&conn->chan_list, cid);
 if (!sk) {
  BT_DBG("unknown cid 0x%4.4x", cid);
  goto drop;
 }

 pi = l2cap_pi(sk);

 BT_DBG("sk %p, len %d", sk, skb->len);

 if (sk->sk_state != BT_CONNECTED)
  goto drop;

 switch (pi->mode) {
 case 130:





  if (pi->imtu < skb->len)
   goto drop;

  if (!sock_queue_rcv_skb(sk, skb))
   goto done;
  break;

 case 129:
  control = get_unaligned_le16(skb->data);
  skb_pull(skb, 2);
  len = skb->len;

  if (__is_sar_start(control))
   len -= 2;

  if (pi->fcs == L2CAP_FCS_CRC16)
   len -= 2;






  if (len > L2CAP_DEFAULT_MAX_PDU_SIZE)
   goto drop;

  if (l2cap_check_fcs(pi, skb))
   goto drop;

  if (__is_iframe(control))
   err = l2cap_data_channel_iframe(sk, control, skb);
  else
   err = l2cap_data_channel_sframe(sk, control, skb);

  if (!err)
   goto done;
  break;

 case 128:
  control = get_unaligned_le16(skb->data);
  skb_pull(skb, 2);
  len = skb->len;

  if (__is_sar_start(control))
   len -= 2;

  if (pi->fcs == L2CAP_FCS_CRC16)
   len -= 2;

  if (len > L2CAP_DEFAULT_MAX_PDU_SIZE || __is_sframe(control))
   goto drop;

  if (l2cap_check_fcs(pi, skb))
   goto drop;

  tx_seq = __get_txseq(control);

  if (pi->expected_tx_seq == tx_seq)
   pi->expected_tx_seq = (pi->expected_tx_seq + 1) % 64;
  else
   pi->expected_tx_seq = tx_seq + 1;

  err = l2cap_sar_reassembly_sdu(sk, skb, control);

  goto done;

 default:
  BT_DBG("sk %p: bad mode 0x%2.2x", sk, l2cap_pi(sk)->mode);
  break;
 }

drop:
 kfree_skb(skb);

done:
 if (sk)
  bh_unlock_sock(sk);

 return 0;
}
