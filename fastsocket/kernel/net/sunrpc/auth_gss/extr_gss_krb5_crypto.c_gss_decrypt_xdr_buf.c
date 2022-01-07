
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_buf {int len; } ;
struct TYPE_2__ {scalar_t__ flags; int info; struct crypto_blkcipher* tfm; } ;
struct decryptor_desc {int frags; scalar_t__ fraglen; scalar_t__ fragno; TYPE_1__ desc; int iv; } ;
struct crypto_blkcipher {int dummy; } ;


 int BUG_ON (int) ;
 int crypto_blkcipher_blocksize (struct crypto_blkcipher*) ;
 int decryptor ;
 int memset (int ,int ,int) ;
 int sg_init_table (int ,int) ;
 int xdr_process_buf (struct xdr_buf*,int,int,int ,struct decryptor_desc*) ;

int
gss_decrypt_xdr_buf(struct crypto_blkcipher *tfm, struct xdr_buf *buf,
      int offset)
{
 struct decryptor_desc desc;


 BUG_ON((buf->len - offset) % crypto_blkcipher_blocksize(tfm) != 0);

 memset(desc.iv, 0, sizeof(desc.iv));
 desc.desc.tfm = tfm;
 desc.desc.info = desc.iv;
 desc.desc.flags = 0;
 desc.fragno = 0;
 desc.fraglen = 0;

 sg_init_table(desc.frags, 4);

 return xdr_process_buf(buf, offset, buf->len - offset, decryptor, &desc);
}
