
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_nlink; int i_ino; } ;
struct TYPE_2__ {int i_ext_last; int * i_ext_bh; int * i_ac; int * i_lc; } ;


 TYPE_1__* AFFS_I (struct inode*) ;
 int affs_brelse (int *) ;
 int affs_free_prealloc (struct inode*) ;
 int free_page (unsigned long) ;
 int pr_debug (char*,...) ;

void
affs_clear_inode(struct inode *inode)
{
 unsigned long cache_page;

 pr_debug("AFFS: clear_inode(ino=%lu, nlink=%u)\n", inode->i_ino, inode->i_nlink);

 affs_free_prealloc(inode);
 cache_page = (unsigned long)AFFS_I(inode)->i_lc;
 if (cache_page) {
  pr_debug("AFFS: freeing ext cache\n");
  AFFS_I(inode)->i_lc = ((void*)0);
  AFFS_I(inode)->i_ac = ((void*)0);
  free_page(cache_page);
 }
 affs_brelse(AFFS_I(inode)->i_ext_bh);
 AFFS_I(inode)->i_ext_last = ~1;
 AFFS_I(inode)->i_ext_bh = ((void*)0);
}
