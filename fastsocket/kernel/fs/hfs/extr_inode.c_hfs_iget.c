
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int dummy; } ;
struct inode {int i_state; } ;
struct hfs_iget_data {TYPE_3__* member_1; struct hfs_cat_key* member_0; } ;
struct hfs_cat_key {int dummy; } ;
struct TYPE_6__ {int FlNum; } ;
struct TYPE_5__ {int DirID; } ;
struct TYPE_7__ {int type; TYPE_2__ file; TYPE_1__ dir; } ;
typedef TYPE_3__ hfs_cat_rec ;




 int I_NEW ;
 int be32_to_cpu (int ) ;
 int hfs_read_inode ;
 int hfs_test_inode ;
 struct inode* iget5_locked (struct super_block*,int ,int ,int ,struct hfs_iget_data*) ;
 int unlock_new_inode (struct inode*) ;

struct inode *hfs_iget(struct super_block *sb, struct hfs_cat_key *key, hfs_cat_rec *rec)
{
 struct hfs_iget_data data = { key, rec };
 struct inode *inode;
 u32 cnid;

 switch (rec->type) {
 case 129:
  cnid = be32_to_cpu(rec->dir.DirID);
  break;
 case 128:
  cnid = be32_to_cpu(rec->file.FlNum);
  break;
 default:
  return ((void*)0);
 }
 inode = iget5_locked(sb, cnid, hfs_test_inode, hfs_read_inode, &data);
 if (inode && (inode->i_state & I_NEW))
  unlock_new_inode(inode);
 return inode;
}
