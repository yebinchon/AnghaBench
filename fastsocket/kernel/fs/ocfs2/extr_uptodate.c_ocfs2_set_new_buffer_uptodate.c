
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_caching_info {int dummy; } ;
struct buffer_head {int dummy; } ;


 int BUG_ON (int ) ;
 int ocfs2_buffer_cached (struct ocfs2_caching_info*,struct buffer_head*) ;
 int ocfs2_metadata_cache_io_lock (struct ocfs2_caching_info*) ;
 int ocfs2_metadata_cache_io_unlock (struct ocfs2_caching_info*) ;
 int ocfs2_set_buffer_uptodate (struct ocfs2_caching_info*,struct buffer_head*) ;
 int set_buffer_uptodate (struct buffer_head*) ;

void ocfs2_set_new_buffer_uptodate(struct ocfs2_caching_info *ci,
       struct buffer_head *bh)
{

 BUG_ON(ocfs2_buffer_cached(ci, bh));

 set_buffer_uptodate(bh);

 ocfs2_metadata_cache_io_lock(ci);
 ocfs2_set_buffer_uptodate(ci, bh);
 ocfs2_metadata_cache_io_unlock(ci);
}
