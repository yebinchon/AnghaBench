
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_netobj {int * data; int len; } ;


 int GSS_S_COMPLETE ;
 int GSS_S_DEFECTIVE_TOKEN ;
 int decode_asn1_bitstring (struct xdr_netobj*,unsigned char*,int,int) ;
 int dprintk (char*,...) ;
 int kfree (int *) ;

u32
spkm3_verify_mic_token(unsigned char **tokp, int *mic_hdrlen, unsigned char **cksum)
{
 struct xdr_netobj spkm3_ctx_id = {.len =0, .data = ((void*)0)};
 unsigned char *ptr = *tokp;
 int ctxelen;
 u32 ret = GSS_S_DEFECTIVE_TOKEN;


 if ((ptr[0] != 0xa4) || (ptr[2] != 0x30)) {
  dprintk("RPC:       BAD SPKM ictoken preamble\n");
  goto out;
 }

 *mic_hdrlen = ptr[3];


 if ((ptr[4] != 0x02) || (ptr[5] != 0x02)) {
  dprintk("RPC:       BAD asn1 SPKM3 token type\n");
  goto out;
 }


 if((ptr[6] != 0x01) || (ptr[7] != 0x01)) {
  dprintk("RPC:       ERROR unsupported SPKM3 token \n");
  goto out;
 }


 if (ptr[8] != 0x03) {
  dprintk("RPC:       BAD SPKM3 asn1 context-id type\n");
  goto out;
 }

 ctxelen = ptr[9];
 if (ctxelen > 17) {
  dprintk("RPC:       BAD SPKM3 contextid len %d\n", ctxelen);
  goto out;
 }



 if(!decode_asn1_bitstring(&spkm3_ctx_id, &ptr[11], ctxelen - 1, 16))
  goto out;







 if (*mic_hdrlen != 6 + ctxelen) {
  dprintk("RPC:       BAD SPKM_ MIC_TOK header len %d: we only "
    "support default int-alg (should be absent) "
    "and do not support snd-seq\n", *mic_hdrlen);
  goto out;
 }

 *cksum = (&ptr[10] + ctxelen);

 ret = GSS_S_COMPLETE;
out:
 kfree(spkm3_ctx_id.data);
 return ret;
}
