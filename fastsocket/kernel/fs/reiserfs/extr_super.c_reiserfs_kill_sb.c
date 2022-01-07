
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {int * priv_root; int * xattr_root; } ;


 TYPE_1__* REISERFS_SB (struct super_block*) ;
 int d_invalidate (int *) ;
 int dput (int *) ;
 int kill_block_super (struct super_block*) ;

__attribute__((used)) static void reiserfs_kill_sb(struct super_block *s)
{
 if (REISERFS_SB(s)) {
  if (REISERFS_SB(s)->xattr_root) {
   d_invalidate(REISERFS_SB(s)->xattr_root);
   dput(REISERFS_SB(s)->xattr_root);
   REISERFS_SB(s)->xattr_root = ((void*)0);
  }
  if (REISERFS_SB(s)->priv_root) {
   d_invalidate(REISERFS_SB(s)->priv_root);
   dput(REISERFS_SB(s)->priv_root);
   REISERFS_SB(s)->priv_root = ((void*)0);
  }
 }

 kill_block_super(s);
}
