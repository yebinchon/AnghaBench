
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int (* sk_state_change ) (struct sock*) ;} ;
struct sk_buff {char* data; int len; } ;
struct dn_scp {unsigned char services_rem; unsigned char flowrem_dat; char flowrem_oth; int flowrem_sw; int numoth_rcv; } ;
typedef int __le16 ;


 int DN_DONTSEND ;
 int DN_SEND ;
 struct dn_scp* DN_SK (struct sock*) ;
 unsigned char NSP_FC_MASK ;
 unsigned char NSP_FC_SCMC ;
 int SOCK_DEAD ;
 int dn_nsp_output (struct sock*) ;
 int dn_nsp_send_oth_ack (struct sock*) ;
 int kfree_skb (struct sk_buff*) ;
 unsigned short le16_to_cpu (int ) ;
 int seq_add (int *,int) ;
 scalar_t__ seq_next (int ,unsigned short) ;
 int sock_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void dn_nsp_linkservice(struct sock *sk, struct sk_buff *skb)
{
 struct dn_scp *scp = DN_SK(sk);
 unsigned short segnum;
 unsigned char lsflags;
 signed char fcval;
 int wake_up = 0;
 char *ptr = skb->data;
 unsigned char fctype = scp->services_rem & NSP_FC_MASK;

 if (skb->len != 4)
  goto out;

 segnum = le16_to_cpu(*(__le16 *)ptr);
 ptr += 2;
 lsflags = *(unsigned char *)ptr++;
 fcval = *ptr;






 if (lsflags & 0xf8)
  goto out;

 if (seq_next(scp->numoth_rcv, segnum)) {
  seq_add(&scp->numoth_rcv, 1);
  switch(lsflags & 0x04) {
  case 0x00:
   switch(lsflags & 0x03) {
   case 0x00:
    if (fcval < 0) {
     unsigned char p_fcval = -fcval;
     if ((scp->flowrem_dat > p_fcval) &&
         (fctype == NSP_FC_SCMC)) {
      scp->flowrem_dat -= p_fcval;
     }
    } else if (fcval > 0) {
     scp->flowrem_dat += fcval;
     wake_up = 1;
    }
    break;
   case 0x01:
    scp->flowrem_sw = DN_DONTSEND;
    break;
   case 0x02:
    scp->flowrem_sw = DN_SEND;
    dn_nsp_output(sk);
    wake_up = 1;
   }
   break;
  case 0x04:
   if (fcval > 0) {
    scp->flowrem_oth += fcval;
    wake_up = 1;
   }
   break;
  }
  if (wake_up && !sock_flag(sk, SOCK_DEAD))
   sk->sk_state_change(sk);
 }

 dn_nsp_send_oth_ack(sk);

out:
 kfree_skb(skb);
}
