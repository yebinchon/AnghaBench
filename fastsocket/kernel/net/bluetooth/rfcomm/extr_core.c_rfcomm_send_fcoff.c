
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rfcomm_session {int initiator; } ;
struct rfcomm_mcc {void* len; int type; } ;
struct rfcomm_hdr {void* len; int ctrl; int addr; } ;


 int BT_DBG (char*,struct rfcomm_session*,int) ;
 int RFCOMM_FCOFF ;
 int RFCOMM_UIH ;
 int __addr (int ,int ) ;
 int __ctrl (int ,int ) ;
 int __fcs (int *) ;
 void* __len8 (int) ;
 int __mcc_type (int,int ) ;
 int rfcomm_send_frame (struct rfcomm_session*,int *,int) ;

__attribute__((used)) static int rfcomm_send_fcoff(struct rfcomm_session *s, int cr)
{
 struct rfcomm_hdr *hdr;
 struct rfcomm_mcc *mcc;
 u8 buf[16], *ptr = buf;

 BT_DBG("%p cr %d", s, cr);

 hdr = (void *) ptr; ptr += sizeof(*hdr);
 hdr->addr = __addr(s->initiator, 0);
 hdr->ctrl = __ctrl(RFCOMM_UIH, 0);
 hdr->len = __len8(sizeof(*mcc));

 mcc = (void *) ptr; ptr += sizeof(*mcc);
 mcc->type = __mcc_type(cr, RFCOMM_FCOFF);
 mcc->len = __len8(0);

 *ptr = __fcs(buf); ptr++;

 return rfcomm_send_frame(s, buf, ptr - buf);
}
