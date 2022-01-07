
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rfcomm_session {int initiator; } ;
struct rfcomm_msc {int v24_sig; void* dlci; } ;
struct rfcomm_mcc {void* len; int type; } ;
struct rfcomm_hdr {void* len; int ctrl; void* addr; } ;


 int BT_DBG (char*,struct rfcomm_session*,int,int) ;
 int RFCOMM_MSC ;
 int RFCOMM_UIH ;
 void* __addr (int,int) ;
 int __ctrl (int ,int ) ;
 int __fcs (int*) ;
 void* __len8 (int) ;
 int __mcc_type (int,int ) ;
 int rfcomm_send_frame (struct rfcomm_session*,int*,int) ;

__attribute__((used)) static int rfcomm_send_msc(struct rfcomm_session *s, int cr, u8 dlci, u8 v24_sig)
{
 struct rfcomm_hdr *hdr;
 struct rfcomm_mcc *mcc;
 struct rfcomm_msc *msc;
 u8 buf[16], *ptr = buf;

 BT_DBG("%p cr %d v24 0x%x", s, cr, v24_sig);

 hdr = (void *) ptr; ptr += sizeof(*hdr);
 hdr->addr = __addr(s->initiator, 0);
 hdr->ctrl = __ctrl(RFCOMM_UIH, 0);
 hdr->len = __len8(sizeof(*mcc) + sizeof(*msc));

 mcc = (void *) ptr; ptr += sizeof(*mcc);
 mcc->type = __mcc_type(cr, RFCOMM_MSC);
 mcc->len = __len8(sizeof(*msc));

 msc = (void *) ptr; ptr += sizeof(*msc);
 msc->dlci = __addr(1, dlci);
 msc->v24_sig = v24_sig | 0x01;

 *ptr = __fcs(buf); ptr++;

 return rfcomm_send_frame(s, buf, ptr - buf);
}
