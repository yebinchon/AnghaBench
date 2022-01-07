
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int test_t ;
struct inode {int i_state; int i_sb; int i_ino; } ;
typedef int set_t ;
typedef int ntfschar ;
struct TYPE_3__ {int mft_no; int name_len; int * name; int type; } ;
typedef TYPE_1__ ntfs_attr ;


 int AT_INDEX_ALLOCATION ;
 int ENOMEM ;
 struct inode* ERR_PTR (int) ;
 int I_NEW ;
 struct inode* iget5_locked (int ,int ,int ,int ,TYPE_1__*) ;
 int iput (struct inode*) ;
 scalar_t__ ntfs_init_locked_inode ;
 int ntfs_read_locked_index_inode (struct inode*,struct inode*) ;
 scalar_t__ ntfs_test_inode ;
 scalar_t__ unlikely (int) ;
 int unlock_new_inode (struct inode*) ;

struct inode *ntfs_index_iget(struct inode *base_vi, ntfschar *name,
  u32 name_len)
{
 struct inode *vi;
 int err;
 ntfs_attr na;

 na.mft_no = base_vi->i_ino;
 na.type = AT_INDEX_ALLOCATION;
 na.name = name;
 na.name_len = name_len;

 vi = iget5_locked(base_vi->i_sb, na.mft_no, (test_t)ntfs_test_inode,
   (set_t)ntfs_init_locked_inode, &na);
 if (unlikely(!vi))
  return ERR_PTR(-ENOMEM);

 err = 0;


 if (vi->i_state & I_NEW) {
  err = ntfs_read_locked_index_inode(base_vi, vi);
  unlock_new_inode(vi);
 }





 if (unlikely(err)) {
  iput(vi);
  vi = ERR_PTR(err);
 }
 return vi;
}
