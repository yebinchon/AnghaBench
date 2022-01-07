
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct ecryptfs_crypt_stat {int cs_tfm_mutex; int key_size; int key; int tfm; } ;
struct blkcipher_desc {unsigned char* info; int flags; int tfm; } ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int EINVAL ;
 int KERN_DEBUG ;
 int KERN_ERR ;
 int crypto_blkcipher_decrypt_iv (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int) ;
 int crypto_blkcipher_setkey (int ,int ,int ) ;
 int ecryptfs_printk (int ,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int decrypt_scatterlist(struct ecryptfs_crypt_stat *crypt_stat,
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


 mutex_lock(&crypt_stat->cs_tfm_mutex);
 rc = crypto_blkcipher_setkey(crypt_stat->tfm, crypt_stat->key,
         crypt_stat->key_size);
 if (rc) {
  ecryptfs_printk(KERN_ERR, "Error setting key; rc = [%d]\n",
    rc);
  mutex_unlock(&crypt_stat->cs_tfm_mutex);
  rc = -EINVAL;
  goto out;
 }
 ecryptfs_printk(KERN_DEBUG, "Decrypting [%d] bytes.\n", size);
 rc = crypto_blkcipher_decrypt_iv(&desc, dest_sg, src_sg, size);
 mutex_unlock(&crypt_stat->cs_tfm_mutex);
 if (rc) {
  ecryptfs_printk(KERN_ERR, "Error decrypting; rc = [%d]\n",
    rc);
  goto out;
 }
 rc = size;
out:
 return rc;
}
