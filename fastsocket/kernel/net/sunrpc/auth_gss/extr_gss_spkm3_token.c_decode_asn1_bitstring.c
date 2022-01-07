
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_netobj {int len; int data; } ;


 int GFP_NOFS ;
 int kzalloc (int,int ) ;
 int memcpy (int ,char*,int) ;

int
decode_asn1_bitstring(struct xdr_netobj *out, char *in, int enclen, int explen)
{
 if (!(out->data = kzalloc(explen,GFP_NOFS)))
  return 0;
 out->len = explen;
 memcpy(out->data, in, enclen);
 return 1;
}
