
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int mac; int lsap; } ;
struct llc_sock {TYPE_2__ daddr; TYPE_3__* dev; int vR; int vS; int rx_pdu_hdr; struct llc_sap* sap; } ;
struct TYPE_4__ {int lsap; } ;
struct llc_sap {TYPE_1__ laddr; } ;
struct llc_pdu_sn {int dummy; } ;
struct llc_frmr_info {int dummy; } ;
struct TYPE_6__ {int dev_addr; } ;


 int ENOBUFS ;
 int INCORRECT ;
 int LLC_PDU_RSP ;
 int LLC_PDU_TYPE_U ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* llc_alloc_frame (struct sock*,TYPE_3__*,int ,int) ;
 int llc_conn_send_pdu (struct sock*,struct sk_buff*) ;
 int llc_mac_hdr_init (struct sk_buff*,int ,int ) ;
 int llc_pdu_header_init (struct sk_buff*,int ,int ,int ,int ) ;
 int llc_pdu_init_as_frmr_rsp (struct sk_buff*,struct llc_pdu_sn*,int ,int ,int ,int ) ;
 struct llc_sock* llc_sk (struct sock*) ;
 scalar_t__ unlikely (int) ;

int llc_conn_ac_resend_frmr_rsp_f_set_0(struct sock *sk, struct sk_buff *skb)
{
 int rc = -ENOBUFS;
 struct llc_sock *llc = llc_sk(sk);
 struct sk_buff *nskb = llc_alloc_frame(sk, llc->dev, LLC_PDU_TYPE_U,
            sizeof(struct llc_frmr_info));

 if (nskb) {
  struct llc_sap *sap = llc->sap;
  struct llc_pdu_sn *pdu = (struct llc_pdu_sn *)&llc->rx_pdu_hdr;

  llc_pdu_header_init(nskb, LLC_PDU_TYPE_U, sap->laddr.lsap,
        llc->daddr.lsap, LLC_PDU_RSP);
  llc_pdu_init_as_frmr_rsp(nskb, pdu, 0, llc->vS,
      llc->vR, INCORRECT);
  rc = llc_mac_hdr_init(nskb, llc->dev->dev_addr, llc->daddr.mac);
  if (unlikely(rc))
   goto free;
  llc_conn_send_pdu(sk, nskb);
 }
out:
 return rc;
free:
 kfree_skb(nskb);
 goto out;
}
