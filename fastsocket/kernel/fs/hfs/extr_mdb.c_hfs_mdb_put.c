
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int * s_fs_info; } ;
struct TYPE_3__ {scalar_t__ bitmap; int nls_disk; int nls_io; int alt_mdb_bh; int mdb_bh; int cat_tree; int ext_tree; } ;


 TYPE_1__* HFS_SB (struct super_block*) ;
 int PAGE_SIZE ;
 int brelse (int ) ;
 int free_pages (unsigned long,int) ;
 int hfs_btree_close (int ) ;
 int kfree (TYPE_1__*) ;
 int unload_nls (int ) ;

void hfs_mdb_put(struct super_block *sb)
{
 if (!HFS_SB(sb))
  return;

 hfs_btree_close(HFS_SB(sb)->ext_tree);
 hfs_btree_close(HFS_SB(sb)->cat_tree);


 brelse(HFS_SB(sb)->mdb_bh);
 brelse(HFS_SB(sb)->alt_mdb_bh);

 unload_nls(HFS_SB(sb)->nls_io);
 unload_nls(HFS_SB(sb)->nls_disk);

 free_pages((unsigned long)HFS_SB(sb)->bitmap, PAGE_SIZE < 8192 ? 1 : 0);
 kfree(HFS_SB(sb));
 sb->s_fs_info = ((void*)0);
}
