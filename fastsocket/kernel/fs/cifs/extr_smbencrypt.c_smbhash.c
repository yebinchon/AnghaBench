
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct crypto_blkcipher {int dummy; } ;
struct blkcipher_desc {struct crypto_blkcipher* tfm; } ;


 int CRYPTO_ALG_ASYNC ;
 scalar_t__ IS_ERR (struct crypto_blkcipher*) ;
 int PTR_ERR (struct crypto_blkcipher*) ;
 int cERROR (int,char*,...) ;
 struct crypto_blkcipher* crypto_alloc_blkcipher (char*,int ,int ) ;
 int crypto_blkcipher_encrypt (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int) ;
 int crypto_blkcipher_setkey (struct crypto_blkcipher*,unsigned char*,int) ;
 int crypto_free_blkcipher (struct crypto_blkcipher*) ;
 int sg_init_one (struct scatterlist*,unsigned char const*,int) ;
 int str_to_key (unsigned char*,unsigned char*) ;

__attribute__((used)) static int
smbhash(unsigned char *out, const unsigned char *in, unsigned char *key)
{
 int rc;
 unsigned char key2[8];
 struct crypto_blkcipher *tfm_des;
 struct scatterlist sgin, sgout;
 struct blkcipher_desc desc;

 str_to_key(key, key2);

 tfm_des = crypto_alloc_blkcipher("ecb(des)", 0, CRYPTO_ALG_ASYNC);
 if (IS_ERR(tfm_des)) {
  rc = PTR_ERR(tfm_des);
  cERROR(1, "could not allocate des crypto API\n");
  goto smbhash_err;
 }

 desc.tfm = tfm_des;

 crypto_blkcipher_setkey(tfm_des, key2, 8);

 sg_init_one(&sgin, in, 8);
 sg_init_one(&sgout, out, 8);

 rc = crypto_blkcipher_encrypt(&desc, &sgout, &sgin, 8);
 if (rc)
  cERROR(1, "could not encrypt crypt key rc: %d\n", rc);

 crypto_free_blkcipher(tfm_des);
smbhash_err:
 return rc;
}
