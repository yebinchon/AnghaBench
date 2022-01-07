
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int * s_fs_info; scalar_t__ s_dirt; } ;
struct bfs_sb_info {struct bfs_sb_info* si_imap; int bfs_lock; int si_sbh; } ;


 struct bfs_sb_info* BFS_SB (struct super_block*) ;
 int bfs_write_super (struct super_block*) ;
 int brelse (int ) ;
 int kfree (struct bfs_sb_info*) ;
 int lock_kernel () ;
 int mutex_destroy (int *) ;
 int unlock_kernel () ;

__attribute__((used)) static void bfs_put_super(struct super_block *s)
{
 struct bfs_sb_info *info = BFS_SB(s);

 if (!info)
  return;

 lock_kernel();

 if (s->s_dirt)
  bfs_write_super(s);

 brelse(info->si_sbh);
 mutex_destroy(&info->bfs_lock);
 kfree(info->si_imap);
 kfree(info);
 s->s_fs_info = ((void*)0);

 unlock_kernel();
}
