
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct gfs2_inode {int i_gl; } ;
struct buffer_head {unsigned int b_size; struct buffer_head* b_this_page; } ;


 scalar_t__ gfs2_is_jdata (struct gfs2_inode*) ;
 int gfs2_trans_add_data (int ,struct buffer_head*) ;
 struct buffer_head* page_buffers (struct page*) ;
 int set_buffer_uptodate (struct buffer_head*) ;

__attribute__((used)) static void gfs2_page_add_databufs(struct gfs2_inode *ip, struct page *page,
       unsigned int from, unsigned int to)
{
 struct buffer_head *head = page_buffers(page);
 unsigned int bsize = head->b_size;
 struct buffer_head *bh;
 unsigned int start, end;

 for (bh = head, start = 0; bh != head || !start;
      bh = bh->b_this_page, start = end) {
  end = start + bsize;
  if (end <= from || start >= to)
   continue;
  if (gfs2_is_jdata(ip))
   set_buffer_uptodate(bh);
  gfs2_trans_add_data(ip->i_gl, bh);
 }
}
