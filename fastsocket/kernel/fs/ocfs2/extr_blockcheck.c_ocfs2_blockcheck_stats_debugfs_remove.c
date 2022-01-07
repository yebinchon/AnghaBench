
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_blockcheck_stats {int dummy; } ;


 int ocfs2_blockcheck_debug_remove (struct ocfs2_blockcheck_stats*) ;

void ocfs2_blockcheck_stats_debugfs_remove(struct ocfs2_blockcheck_stats *stats)
{
 ocfs2_blockcheck_debug_remove(stats);
}
