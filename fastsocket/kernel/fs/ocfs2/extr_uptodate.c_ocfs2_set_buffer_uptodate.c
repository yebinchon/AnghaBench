
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_caching_info {int ci_flags; } ;
struct buffer_head {scalar_t__ b_blocknr; } ;


 int OCFS2_CACHE_FL_INLINE ;
 int __ocfs2_set_buffer_uptodate (struct ocfs2_caching_info*,scalar_t__,int) ;
 int mlog (int ,char*,unsigned long long,unsigned long long) ;
 int ocfs2_append_cache_array (struct ocfs2_caching_info*,scalar_t__) ;
 scalar_t__ ocfs2_buffer_cached (struct ocfs2_caching_info*,struct buffer_head*) ;
 scalar_t__ ocfs2_insert_can_use_array (struct ocfs2_caching_info*) ;
 int ocfs2_metadata_cache_lock (struct ocfs2_caching_info*) ;
 scalar_t__ ocfs2_metadata_cache_owner (struct ocfs2_caching_info*) ;
 int ocfs2_metadata_cache_unlock (struct ocfs2_caching_info*) ;

void ocfs2_set_buffer_uptodate(struct ocfs2_caching_info *ci,
          struct buffer_head *bh)
{
 int expand;



 if (ocfs2_buffer_cached(ci, bh))
  return;

 mlog(0, "Owner %llu, inserting block %llu\n",
      (unsigned long long)ocfs2_metadata_cache_owner(ci),
      (unsigned long long)bh->b_blocknr);



 ocfs2_metadata_cache_lock(ci);
 if (ocfs2_insert_can_use_array(ci)) {


  ocfs2_append_cache_array(ci, bh->b_blocknr);
  ocfs2_metadata_cache_unlock(ci);
  return;
 }

 expand = 0;
 if (ci->ci_flags & OCFS2_CACHE_FL_INLINE) {

  expand = 1;
 }
 ocfs2_metadata_cache_unlock(ci);

 __ocfs2_set_buffer_uptodate(ci, bh->b_blocknr, expand);
}
