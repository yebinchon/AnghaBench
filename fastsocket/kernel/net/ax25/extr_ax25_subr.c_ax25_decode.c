
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {unsigned char* data; } ;
struct TYPE_3__ {scalar_t__ modulus; } ;
typedef TYPE_1__ ax25_cb ;


 unsigned char AX25_EPF ;
 int AX25_I ;
 int AX25_ILLEGAL ;
 scalar_t__ AX25_MODULUS ;
 unsigned char AX25_PF ;
 unsigned char AX25_S ;
 unsigned char AX25_U ;
 int skb_pull (struct sk_buff*,int) ;

int ax25_decode(ax25_cb *ax25, struct sk_buff *skb, int *ns, int *nr, int *pf)
{
 unsigned char *frame;
 int frametype = AX25_ILLEGAL;

 frame = skb->data;
 *ns = *nr = *pf = 0;

 if (ax25->modulus == AX25_MODULUS) {
  if ((frame[0] & AX25_S) == 0) {
   frametype = AX25_I;
   *ns = (frame[0] >> 1) & 0x07;
   *nr = (frame[0] >> 5) & 0x07;
   *pf = frame[0] & AX25_PF;
  } else if ((frame[0] & AX25_U) == 1) {
   frametype = frame[0] & 0x0F;
   *nr = (frame[0] >> 5) & 0x07;
   *pf = frame[0] & AX25_PF;
  } else if ((frame[0] & AX25_U) == 3) {
   frametype = frame[0] & ~AX25_PF;
   *pf = frame[0] & AX25_PF;
  }
  skb_pull(skb, 1);
 } else {
  if ((frame[0] & AX25_S) == 0) {
   frametype = AX25_I;
   *ns = (frame[0] >> 1) & 0x7F;
   *nr = (frame[1] >> 1) & 0x7F;
   *pf = frame[1] & AX25_EPF;
   skb_pull(skb, 2);
  } else if ((frame[0] & AX25_U) == 1) {
   frametype = frame[0] & 0x0F;
   *nr = (frame[1] >> 1) & 0x7F;
   *pf = frame[1] & AX25_EPF;
   skb_pull(skb, 2);
  } else if ((frame[0] & AX25_U) == 3) {
   frametype = frame[0] & ~AX25_PF;
   *pf = frame[0] & AX25_PF;
   skb_pull(skb, 1);
  }
 }

 return frametype;
}
