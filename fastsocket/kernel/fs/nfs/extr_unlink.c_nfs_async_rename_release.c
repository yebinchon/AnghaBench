
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct nfs_renamedata {int cred; TYPE_1__* new_dir; TYPE_1__* old_dir; TYPE_2__* new_dentry; TYPE_2__* old_dentry; } ;
struct TYPE_4__ {scalar_t__ d_inode; } ;
struct TYPE_3__ {struct super_block* i_sb; } ;


 int dput (TYPE_2__*) ;
 int iput (TYPE_1__*) ;
 int kfree (struct nfs_renamedata*) ;
 int nfs_mark_for_revalidate (scalar_t__) ;
 int nfs_sb_deactive (struct super_block*) ;
 int put_rpccred (int ) ;

__attribute__((used)) static void nfs_async_rename_release(void *calldata)
{
 struct nfs_renamedata *data = calldata;
 struct super_block *sb = data->old_dir->i_sb;

 if (data->old_dentry->d_inode)
  nfs_mark_for_revalidate(data->old_dentry->d_inode);

 dput(data->old_dentry);
 dput(data->new_dentry);
 iput(data->old_dir);
 iput(data->new_dir);
 nfs_sb_deactive(sb);
 put_rpccred(data->cred);
 kfree(data);
}
