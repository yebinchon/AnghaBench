
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_netobj {int * data; int len; } ;
struct xdr_buf {scalar_t__ len; } ;
struct scatterlist {int length; } ;
struct hash_desc {int tfm; int flags; } ;
typedef int s32 ;



 int CRYPTO_ALG_ASYNC ;
 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int GSS_S_FAILURE ;
 scalar_t__ IS_ERR (int ) ;
 int crypto_alloc_hash (char*,int ,int ) ;
 int crypto_free_hash (int ) ;
 int crypto_hash_digestsize (int ) ;
 int crypto_hash_final (struct hash_desc*,int *) ;
 int crypto_hash_init (struct hash_desc*) ;
 int crypto_hash_setkey (int ,int *,int ) ;
 int crypto_hash_update (struct hash_desc*,struct scatterlist*,int ) ;
 int dprintk (char*,int) ;
 int sg_init_one (struct scatterlist*,char*,unsigned int) ;
 int spkm3_checksummer ;
 int xdr_process_buf (struct xdr_buf*,unsigned int,scalar_t__,int ,struct hash_desc*) ;

s32
make_spkm3_checksum(s32 cksumtype, struct xdr_netobj *key, char *header,
      unsigned int hdrlen, struct xdr_buf *body,
      unsigned int body_offset, struct xdr_netobj *cksum)
{
 char *cksumname;
 struct hash_desc desc;
 struct scatterlist sg[1];
 int err;

 switch (cksumtype) {
  case 128:
   cksumname = "hmac(md5)";
   break;
  default:
   dprintk("RPC:       spkm3_make_checksum:"
     " unsupported checksum %d", cksumtype);
   return GSS_S_FAILURE;
 }

 if (key->data == ((void*)0) || key->len <= 0) return GSS_S_FAILURE;

 desc.tfm = crypto_alloc_hash(cksumname, 0, CRYPTO_ALG_ASYNC);
 if (IS_ERR(desc.tfm))
  return GSS_S_FAILURE;
 cksum->len = crypto_hash_digestsize(desc.tfm);
 desc.flags = CRYPTO_TFM_REQ_MAY_SLEEP;

 err = crypto_hash_setkey(desc.tfm, key->data, key->len);
 if (err)
  goto out;

 err = crypto_hash_init(&desc);
 if (err)
  goto out;

 sg_init_one(sg, header, hdrlen);
 crypto_hash_update(&desc, sg, sg->length);

 xdr_process_buf(body, body_offset, body->len - body_offset,
   spkm3_checksummer, &desc);
 crypto_hash_final(&desc, cksum->data);

out:
 crypto_free_hash(desc.tfm);

 return err ? GSS_S_FAILURE : 0;
}
