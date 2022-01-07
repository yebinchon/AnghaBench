
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_buf {int len; } ;
struct page {int dummy; } ;
struct TYPE_2__ {scalar_t__ flags; int info; struct crypto_blkcipher* tfm; } ;
struct encryptor_desc {int pos; int outfrags; int infrags; scalar_t__ fraglen; scalar_t__ fragno; struct page** pages; struct xdr_buf* outbuf; TYPE_1__ desc; int iv; } ;
struct crypto_blkcipher {int dummy; } ;


 int BUG_ON (int) ;
 int crypto_blkcipher_blocksize (struct crypto_blkcipher*) ;
 int encryptor ;
 int memset (int ,int ,int) ;
 int sg_init_table (int ,int) ;
 int xdr_process_buf (struct xdr_buf*,int,int,int ,struct encryptor_desc*) ;

int
gss_encrypt_xdr_buf(struct crypto_blkcipher *tfm, struct xdr_buf *buf,
      int offset, struct page **pages)
{
 int ret;
 struct encryptor_desc desc;

 BUG_ON((buf->len - offset) % crypto_blkcipher_blocksize(tfm) != 0);

 memset(desc.iv, 0, sizeof(desc.iv));
 desc.desc.tfm = tfm;
 desc.desc.info = desc.iv;
 desc.desc.flags = 0;
 desc.pos = offset;
 desc.outbuf = buf;
 desc.pages = pages;
 desc.fragno = 0;
 desc.fraglen = 0;

 sg_init_table(desc.infrags, 4);
 sg_init_table(desc.outfrags, 4);

 ret = xdr_process_buf(buf, offset, buf->len - offset, encryptor, &desc);
 return ret;
}
