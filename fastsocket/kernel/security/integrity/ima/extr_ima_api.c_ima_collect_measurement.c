
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct ima_iint_cache {int flags; int version; int digest; } ;
struct file {TYPE_2__* f_dentry; } ;
struct TYPE_4__ {TYPE_1__* d_inode; } ;
struct TYPE_3__ {int i_version; } ;


 int EEXIST ;
 int IMA_DIGEST_SIZE ;
 int IMA_MEASURED ;
 int ima_calc_hash (struct file*,int ) ;
 int memset (int ,int ,int ) ;

int ima_collect_measurement(struct ima_iint_cache *iint, struct file *file)
{
 int result = -EEXIST;

 if (!(iint->flags & IMA_MEASURED)) {
  u64 i_version = file->f_dentry->d_inode->i_version;

  memset(iint->digest, 0, IMA_DIGEST_SIZE);
  result = ima_calc_hash(file, iint->digest);
  if (!result)
   iint->version = i_version;
 }
 return result;
}
