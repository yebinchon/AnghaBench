
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecryptfs_crypt_stat {char* root_iv; int iv_bytes; } ;
typedef int loff_t ;


 int ECRYPTFS_MAX_IV_BYTES ;
 int KERN_DEBUG ;
 int KERN_WARNING ;
 int MD5_DIGEST_SIZE ;
 int ecryptfs_calculate_md5 (char*,struct ecryptfs_crypt_stat*,char*,int) ;
 int ecryptfs_dump_hex (char*,int) ;
 int ecryptfs_printk (int ,char*) ;
 scalar_t__ ecryptfs_verbosity ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;
 int snprintf (char*,int,char*,int ) ;
 scalar_t__ unlikely (int) ;

int ecryptfs_derive_iv(char *iv, struct ecryptfs_crypt_stat *crypt_stat,
         loff_t offset)
{
 int rc = 0;
 char dst[MD5_DIGEST_SIZE];
 char src[ECRYPTFS_MAX_IV_BYTES + 16];

 if (unlikely(ecryptfs_verbosity > 0)) {
  ecryptfs_printk(KERN_DEBUG, "root iv:\n");
  ecryptfs_dump_hex(crypt_stat->root_iv, crypt_stat->iv_bytes);
 }




 memcpy(src, crypt_stat->root_iv, crypt_stat->iv_bytes);
 memset((src + crypt_stat->iv_bytes), 0, 16);
 snprintf((src + crypt_stat->iv_bytes), 16, "%lld", offset);
 if (unlikely(ecryptfs_verbosity > 0)) {
  ecryptfs_printk(KERN_DEBUG, "source:\n");
  ecryptfs_dump_hex(src, (crypt_stat->iv_bytes + 16));
 }
 rc = ecryptfs_calculate_md5(dst, crypt_stat, src,
        (crypt_stat->iv_bytes + 16));
 if (rc) {
  ecryptfs_printk(KERN_WARNING, "Error attempting to compute "
    "MD5 while generating IV for a page\n");
  goto out;
 }
 memcpy(iv, dst, crypt_stat->iv_bytes);
 if (unlikely(ecryptfs_verbosity > 0)) {
  ecryptfs_printk(KERN_DEBUG, "derived iv:\n");
  ecryptfs_dump_hex(iv, crypt_stat->iv_bytes);
 }
out:
 return rc;
}
