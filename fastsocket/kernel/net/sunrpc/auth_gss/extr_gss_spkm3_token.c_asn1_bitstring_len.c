
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_netobj {int len; char* data; } ;



void
asn1_bitstring_len(struct xdr_netobj *in, int *enclen, int *zerobits)
{
 int i, zbit = 0,elen = in->len;
 char *ptr;

 ptr = &in->data[in->len -1];


 for(i = in->len; i > 0; i--) {
  if (*ptr == 0) {
   ptr--;
   elen--;
  } else
   break;
 }


 ptr = &in->data[elen - 1];
 for(i = 0; i < 8; i++) {
  short mask = 0x01;

  if (!((mask << i) & *ptr))
   zbit++;
  else
   break;
 }
 *enclen = elen;
 *zerobits = zbit;
}
