
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ s_dirt; } ;
struct bfs_sb_info {int bfs_lock; int si_sbh; } ;


 struct bfs_sb_info* BFS_SB (struct super_block*) ;
 int mark_buffer_dirty (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bfs_sync_fs(struct super_block *sb, int wait)
{
 struct bfs_sb_info *info = BFS_SB(sb);

 mutex_lock(&info->bfs_lock);
 mark_buffer_dirty(info->si_sbh);
 sb->s_dirt = 0;
 mutex_unlock(&info->bfs_lock);

 return 0;
}
