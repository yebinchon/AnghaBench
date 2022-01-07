
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct reiserfs_iget_args {int dirid; int objectid; } ;
struct inode {int i_state; } ;
struct TYPE_2__ {int k_objectid; int k_dir_id; } ;
struct cpu_key {TYPE_1__ on_disk_key; } ;


 int ENOMEM ;
 struct inode* ERR_PTR (int ) ;
 int INODE_PKEY (struct inode*) ;
 int I_NEW ;
 scalar_t__ comp_short_keys (int ,struct cpu_key const*) ;
 struct inode* iget5_locked (struct super_block*,int ,int ,int ,void*) ;
 int iput (struct inode*) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 int reiserfs_find_actor ;
 int reiserfs_init_locked_inode ;
 int reiserfs_read_locked_inode (struct inode*,struct reiserfs_iget_args*) ;
 int unlock_new_inode (struct inode*) ;

struct inode *reiserfs_iget(struct super_block *s, const struct cpu_key *key)
{
 struct inode *inode;
 struct reiserfs_iget_args args;

 args.objectid = key->on_disk_key.k_objectid;
 args.dirid = key->on_disk_key.k_dir_id;
 inode = iget5_locked(s, key->on_disk_key.k_objectid,
        reiserfs_find_actor, reiserfs_init_locked_inode,
        (void *)(&args));
 if (!inode)
  return ERR_PTR(-ENOMEM);

 if (inode->i_state & I_NEW) {
  reiserfs_read_locked_inode(inode, &args);
  unlock_new_inode(inode);
 }

 if (comp_short_keys(INODE_PKEY(inode), key) || is_bad_inode(inode)) {

  iput(inode);
  inode = ((void*)0);
 }
 return inode;
}
