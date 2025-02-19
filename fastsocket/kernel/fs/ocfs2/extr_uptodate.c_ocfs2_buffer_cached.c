
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_meta_cache_item {int dummy; } ;
struct ocfs2_caching_info {int ci_flags; } ;
struct buffer_head {scalar_t__ b_blocknr; } ;


 int OCFS2_CACHE_FL_INLINE ;
 int mlog (int ,char*,int,unsigned long long,...) ;
 int ocfs2_metadata_cache_lock (struct ocfs2_caching_info*) ;
 scalar_t__ ocfs2_metadata_cache_owner (struct ocfs2_caching_info*) ;
 int ocfs2_metadata_cache_unlock (struct ocfs2_caching_info*) ;
 int ocfs2_search_cache_array (struct ocfs2_caching_info*,scalar_t__) ;
 struct ocfs2_meta_cache_item* ocfs2_search_cache_tree (struct ocfs2_caching_info*,scalar_t__) ;

__attribute__((used)) static int ocfs2_buffer_cached(struct ocfs2_caching_info *ci,
          struct buffer_head *bh)
{
 int index = -1;
 struct ocfs2_meta_cache_item *item = ((void*)0);

 ocfs2_metadata_cache_lock(ci);

 mlog(0, "Owner %llu, query block %llu (inline = %u)\n",
      (unsigned long long)ocfs2_metadata_cache_owner(ci),
      (unsigned long long) bh->b_blocknr,
      !!(ci->ci_flags & OCFS2_CACHE_FL_INLINE));

 if (ci->ci_flags & OCFS2_CACHE_FL_INLINE)
  index = ocfs2_search_cache_array(ci, bh->b_blocknr);
 else
  item = ocfs2_search_cache_tree(ci, bh->b_blocknr);

 ocfs2_metadata_cache_unlock(ci);

 mlog(0, "index = %d, item = %p\n", index, item);

 return (index != -1) || (item != ((void*)0));
}
