
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_4__ {TYPE_1__* external; } ;
struct fnode {int ea_size_l; int ea_anode; int ea_secno; TYPE_2__ u; int btree; int dirflag; } ;
struct extended_attribute {int anode; scalar_t__ indirect; } ;
struct buffer_head {int dummy; } ;
typedef int fnode_secno ;
struct TYPE_3__ {int disk_secno; } ;


 int brelse (struct buffer_head*) ;
 int ea_len (struct extended_attribute*) ;
 int ea_sec (struct extended_attribute*) ;
 struct extended_attribute* fnode_ea (struct fnode*) ;
 struct extended_attribute* fnode_end_ea (struct fnode*) ;
 int hpfs_ea_ext_remove (struct super_block*,int ,int ,int ) ;
 int hpfs_ea_remove (struct super_block*,int ,int ,int ) ;
 int hpfs_free_sectors (struct super_block*,int ,int) ;
 struct fnode* hpfs_map_fnode (struct super_block*,int ,struct buffer_head**) ;
 int hpfs_remove_btree (struct super_block*,int *) ;
 int hpfs_remove_dtree (struct super_block*,int ) ;
 struct extended_attribute* next_ea (struct extended_attribute*) ;

void hpfs_remove_fnode(struct super_block *s, fnode_secno fno)
{
 struct buffer_head *bh;
 struct fnode *fnode;
 struct extended_attribute *ea;
 struct extended_attribute *ea_end;
 if (!(fnode = hpfs_map_fnode(s, fno, &bh))) return;
 if (!fnode->dirflag) hpfs_remove_btree(s, &fnode->btree);
 else hpfs_remove_dtree(s, fnode->u.external[0].disk_secno);
 ea_end = fnode_end_ea(fnode);
 for (ea = fnode_ea(fnode); ea < ea_end; ea = next_ea(ea))
  if (ea->indirect)
   hpfs_ea_remove(s, ea_sec(ea), ea->anode, ea_len(ea));
 hpfs_ea_ext_remove(s, fnode->ea_secno, fnode->ea_anode, fnode->ea_size_l);
 brelse(bh);
 hpfs_free_sectors(s, fno, 1);
}
