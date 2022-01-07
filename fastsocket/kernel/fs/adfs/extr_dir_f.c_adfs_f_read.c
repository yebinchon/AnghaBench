
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_3__ {int dirparent; } ;
struct TYPE_4__ {TYPE_1__ new; } ;
struct adfs_dir {TYPE_2__ dirtail; int parent_id; } ;


 unsigned int ADFS_NEWDIR_SIZE ;
 int EIO ;
 int adfs_dir_read (struct super_block*,unsigned int,unsigned int,struct adfs_dir*) ;
 int adfs_error (struct super_block*,char*) ;
 int adfs_readval (int ,int) ;

__attribute__((used)) static int
adfs_f_read(struct super_block *sb, unsigned int id, unsigned int sz, struct adfs_dir *dir)
{
 int ret;

 if (sz != ADFS_NEWDIR_SIZE)
  return -EIO;

 ret = adfs_dir_read(sb, id, sz, dir);
 if (ret)
  adfs_error(sb, "unable to read directory");
 else
  dir->parent_id = adfs_readval(dir->dirtail.new.dirparent, 3);

 return ret;
}
