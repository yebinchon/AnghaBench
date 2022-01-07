
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct xdr_buf {int len; struct page** pages; } ;
struct scatterlist {int dummy; } ;
struct page {int dummy; } ;
struct crypto_blkcipher {int dummy; } ;
struct blkcipher_desc {int * info; struct crypto_blkcipher* tfm; } ;


 int BUG_ON (int) ;
 int crypto_blkcipher_blocksize (struct crypto_blkcipher*) ;
 int crypto_blkcipher_decrypt_iv (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int) ;
 int crypto_blkcipher_encrypt_iv (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int) ;
 int read_bytes_from_xdr_buf (struct xdr_buf*,int,int *,int) ;
 int sg_init_one (struct scatterlist*,int *,int) ;
 int write_bytes_to_xdr_buf (struct xdr_buf*,int,int *,int) ;

__attribute__((used)) static u32
gss_krb5_cts_crypt(struct crypto_blkcipher *cipher, struct xdr_buf *buf,
     u32 offset, u8 *iv, struct page **pages, int encrypt)
{
 u32 ret;
 struct scatterlist sg[1];
 struct blkcipher_desc desc = { .tfm = cipher, .info = iv };
 u8 data[crypto_blkcipher_blocksize(cipher) * 2];
 struct page **save_pages;
 u32 len = buf->len - offset;

 BUG_ON(len > crypto_blkcipher_blocksize(cipher) * 2);






 save_pages = buf->pages;
 if (encrypt)
  buf->pages = pages;

 ret = read_bytes_from_xdr_buf(buf, offset, data, len);
 buf->pages = save_pages;
 if (ret)
  goto out;

 sg_init_one(sg, data, len);

 if (encrypt)
  ret = crypto_blkcipher_encrypt_iv(&desc, sg, sg, len);
 else
  ret = crypto_blkcipher_decrypt_iv(&desc, sg, sg, len);

 if (ret)
  goto out;

 ret = write_bytes_to_xdr_buf(buf, offset, data, len);

out:
 return ret;
}
