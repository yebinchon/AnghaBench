
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {int dummy; } ;
struct nilfs_inode_info {int i_state; int i_bmap; int * i_bh; scalar_t__ i_flags; int i_cno; } ;
struct inode {TYPE_1__* i_mapping; int * i_fop; int * i_op; } ;
typedef int ino_t ;
typedef int __u64 ;
struct TYPE_2__ {int * a_ops; } ;


 int GFP_NOFS ;
 struct nilfs_inode_info* NILFS_I (struct inode*) ;
 int NILFS_I_GCINODE ;
 int def_gcinode_aops ;
 int nilfs_bmap_init_gc (int ) ;
 struct inode* nilfs_mdt_new_common (struct the_nilfs*,int *,int ,int ) ;

__attribute__((used)) static struct inode *alloc_gcinode(struct the_nilfs *nilfs, ino_t ino,
       __u64 cno)
{
 struct inode *inode = nilfs_mdt_new_common(nilfs, ((void*)0), ino, GFP_NOFS);
 struct nilfs_inode_info *ii;

 if (!inode)
  return ((void*)0);

 inode->i_op = ((void*)0);
 inode->i_fop = ((void*)0);
 inode->i_mapping->a_ops = &def_gcinode_aops;

 ii = NILFS_I(inode);
 ii->i_cno = cno;
 ii->i_flags = 0;
 ii->i_state = 1 << NILFS_I_GCINODE;
 ii->i_bh = ((void*)0);
 nilfs_bmap_init_gc(ii->i_bmap);

 return inode;
}
