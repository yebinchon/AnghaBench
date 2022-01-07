
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u64 ;
struct page {int dummy; } ;
struct TYPE_2__ {unsigned int sb_bsize_shift; int sb_bsize; } ;
struct gfs2_sbd {int sd_vfs; TYPE_1__ sd_sb; } ;
struct gfs2_glock {struct gfs2_sbd* gl_sbd; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;
struct address_space {int dummy; } ;


 unsigned int PAGE_CACHE_SHIFT ;
 int buffer_mapped (struct buffer_head*) ;
 int create_empty_buffers (struct page*,int ,int ) ;
 struct page* find_lock_page (struct address_space*,unsigned long) ;
 int get_bh (struct buffer_head*) ;
 struct address_space* gfs2_glock2aspace (struct gfs2_glock*) ;
 struct page* grab_cache_page (struct address_space*,unsigned long) ;
 int map_bh (struct buffer_head*,int ,unsigned int) ;
 int mark_page_accessed (struct page*) ;
 struct buffer_head* page_buffers (struct page*) ;
 int page_cache_release (struct page*) ;
 int page_has_buffers (struct page*) ;
 int unlock_page (struct page*) ;
 int yield () ;

struct buffer_head *gfs2_getbuf(struct gfs2_glock *gl, u64 blkno, int create)
{
 struct address_space *mapping = gfs2_glock2aspace(gl);
 struct gfs2_sbd *sdp = gl->gl_sbd;
 struct page *page;
 struct buffer_head *bh;
 unsigned int shift;
 unsigned long index;
 unsigned int bufnum;

 shift = PAGE_CACHE_SHIFT - sdp->sd_sb.sb_bsize_shift;
 index = blkno >> shift;
 bufnum = blkno - (index << shift);

 if (create) {
  for (;;) {
   page = grab_cache_page(mapping, index);
   if (page)
    break;
   yield();
  }
 } else {
  page = find_lock_page(mapping, index);
  if (!page)
   return ((void*)0);
 }

 if (!page_has_buffers(page))
  create_empty_buffers(page, sdp->sd_sb.sb_bsize, 0);


 for (bh = page_buffers(page); bufnum--; bh = bh->b_this_page)
                  ;
 get_bh(bh);

 if (!buffer_mapped(bh))
  map_bh(bh, sdp->sd_vfs, blkno);

 unlock_page(page);
 mark_page_accessed(page);
 page_cache_release(page);

 return bh;
}
