
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {int n_free_nodes; int first_free; } ;
struct fnode {int ea_offs; TYPE_1__ btree; int magic; } ;
struct buffer_head {int dummy; } ;
typedef int secno ;
typedef int fnode_secno ;


 int FNODE_ALLOC_FWD ;
 int FNODE_MAGIC ;
 int hpfs_alloc_sector (struct super_block*,int ,int,int ,int) ;
 int hpfs_free_sectors (struct super_block*,int ,int) ;
 struct fnode* hpfs_get_sector (struct super_block*,int ,struct buffer_head**) ;
 int memset (struct fnode*,int ,int) ;

struct fnode *hpfs_alloc_fnode(struct super_block *s, secno near, fnode_secno *fno,
     struct buffer_head **bh)
{
 struct fnode *f;
 if (!(*fno = hpfs_alloc_sector(s, near, 1, FNODE_ALLOC_FWD, 1))) return ((void*)0);
 if (!(f = hpfs_get_sector(s, *fno, bh))) {
  hpfs_free_sectors(s, *fno, 1);
  return ((void*)0);
 }
 memset(f, 0, 512);
 f->magic = FNODE_MAGIC;
 f->ea_offs = 0xc4;
 f->btree.n_free_nodes = 8;
 f->btree.first_free = 8;
 return f;
}
