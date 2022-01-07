
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct ecryptfs_crypt_stat {int flags; int key_size; int cs_tfm_mutex; int key; int tfm; } ;
struct blkcipher_desc {unsigned char* info; int flags; int tfm; } ;


 int BUG_ON (int) ;
 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int ECRYPTFS_KEY_SET ;
 int ECRYPTFS_STRUCT_INITIALIZED ;
 int EINVAL ;
 int KERN_DEBUG ;
 int KERN_ERR ;
 int crypto_blkcipher_encrypt_iv (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int) ;
 int crypto_blkcipher_setkey (int ,int ,int) ;
 int ecryptfs_dump_hex (int ,int) ;
 int ecryptfs_printk (int ,char*,int) ;
 scalar_t__ ecryptfs_verbosity ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int encrypt_scatterlist(struct ecryptfs_crypt_stat *crypt_stat,
          struct scatterlist *dest_sg,
          struct scatterlist *src_sg, int size,
          unsigned char *iv)
{
 struct blkcipher_desc desc = {
  .tfm = crypt_stat->tfm,
  .info = iv,
  .flags = CRYPTO_TFM_REQ_MAY_SLEEP
 };
 int rc = 0;

 BUG_ON(!crypt_stat || !crypt_stat->tfm
        || !(crypt_stat->flags & ECRYPTFS_STRUCT_INITIALIZED));
 if (unlikely(ecryptfs_verbosity > 0)) {
  ecryptfs_printk(KERN_DEBUG, "Key size [%d]; key:\n",
    crypt_stat->key_size);
  ecryptfs_dump_hex(crypt_stat->key,
      crypt_stat->key_size);
 }

 mutex_lock(&crypt_stat->cs_tfm_mutex);
 if (!(crypt_stat->flags & ECRYPTFS_KEY_SET)) {
  rc = crypto_blkcipher_setkey(crypt_stat->tfm, crypt_stat->key,
          crypt_stat->key_size);
  crypt_stat->flags |= ECRYPTFS_KEY_SET;
 }
 if (rc) {
  ecryptfs_printk(KERN_ERR, "Error setting key; rc = [%d]\n",
    rc);
  mutex_unlock(&crypt_stat->cs_tfm_mutex);
  rc = -EINVAL;
  goto out;
 }
 ecryptfs_printk(KERN_DEBUG, "Encrypting [%d] bytes.\n", size);
 crypto_blkcipher_encrypt_iv(&desc, dest_sg, src_sg, size);
 mutex_unlock(&crypt_stat->cs_tfm_mutex);
out:
 return rc;
}
