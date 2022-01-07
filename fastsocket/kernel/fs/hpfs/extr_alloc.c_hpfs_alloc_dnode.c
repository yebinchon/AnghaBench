
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct quad_buffer_head {int dummy; } ;
struct dnode {int first_free; int* dirent; int self; int magic; } ;
typedef int secno ;
typedef int dnode_secno ;
struct TYPE_2__ {int sb_dmap; } ;


 int DNODE_MAGIC ;
 scalar_t__ FREE_DNODES_ADD ;
 int alloc_in_dirband (struct super_block*,int ,int) ;
 int hpfs_alloc_sector (struct super_block*,int ,int,int ,int) ;
 scalar_t__ hpfs_count_one_bitmap (struct super_block*,int ) ;
 int hpfs_free_dnode (struct super_block*,int ) ;
 struct dnode* hpfs_get_4sectors (struct super_block*,int ,struct quad_buffer_head*) ;
 TYPE_1__* hpfs_sb (struct super_block*) ;
 int memset (struct dnode*,int ,int) ;

struct dnode *hpfs_alloc_dnode(struct super_block *s, secno near,
    dnode_secno *dno, struct quad_buffer_head *qbh,
    int lock)
{
 struct dnode *d;
 if (hpfs_count_one_bitmap(s, hpfs_sb(s)->sb_dmap) > FREE_DNODES_ADD) {
  if (!(*dno = alloc_in_dirband(s, near, lock)))
   if (!(*dno = hpfs_alloc_sector(s, near, 4, 0, lock))) return ((void*)0);
 } else {
  if (!(*dno = hpfs_alloc_sector(s, near, 4, 0, lock)))
   if (!(*dno = alloc_in_dirband(s, near, lock))) return ((void*)0);
 }
 if (!(d = hpfs_get_4sectors(s, *dno, qbh))) {
  hpfs_free_dnode(s, *dno);
  return ((void*)0);
 }
 memset(d, 0, 2048);
 d->magic = DNODE_MAGIC;
 d->first_free = 52;
 d->dirent[0] = 32;
 d->dirent[2] = 8;
 d->dirent[30] = 1;
 d->dirent[31] = 255;
 d->self = *dno;
 return d;
}
