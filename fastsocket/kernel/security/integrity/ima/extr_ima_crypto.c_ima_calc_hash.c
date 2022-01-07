
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct hash_desc {int tfm; } ;
struct file {TYPE_1__* f_dentry; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int d_inode; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int crypto_free_hash (int ) ;
 int crypto_hash_final (struct hash_desc*,char*) ;
 int crypto_hash_update (struct hash_desc*,struct scatterlist*,int) ;
 scalar_t__ i_size_read (int ) ;
 int init_desc (struct hash_desc*) ;
 int kernel_read (struct file*,scalar_t__,char*,int ) ;
 int kfree (char*) ;
 char* kzalloc (int ,int ) ;
 int sg_init_one (struct scatterlist*,char*,int) ;

int ima_calc_hash(struct file *file, char *digest)
{
 struct hash_desc desc;
 struct scatterlist sg[1];
 loff_t i_size, offset = 0;
 char *rbuf;
 int rc;

 rc = init_desc(&desc);
 if (rc != 0)
  return rc;

 rbuf = kzalloc(PAGE_SIZE, GFP_KERNEL);
 if (!rbuf) {
  rc = -ENOMEM;
  goto out;
 }
 i_size = i_size_read(file->f_dentry->d_inode);
 while (offset < i_size) {
  int rbuf_len;

  rbuf_len = kernel_read(file, offset, rbuf, PAGE_SIZE);
  if (rbuf_len < 0) {
   rc = rbuf_len;
   break;
  }
  if (rbuf_len == 0)
   break;
  offset += rbuf_len;
  sg_init_one(sg, rbuf, rbuf_len);

  rc = crypto_hash_update(&desc, sg, rbuf_len);
  if (rc)
   break;
 }
 kfree(rbuf);
 if (!rc)
  rc = crypto_hash_final(&desc, digest);
out:
 crypto_free_hash(desc.tfm);
 return rc;
}
