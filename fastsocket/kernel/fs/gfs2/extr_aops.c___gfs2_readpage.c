
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct gfs2_sbd {int sd_flags; } ;
struct gfs2_inode {int dummy; } ;
struct TYPE_2__ {int host; } ;


 int EIO ;
 struct gfs2_inode* GFS2_I (int ) ;
 struct gfs2_sbd* GFS2_SB (int ) ;
 int SDF_SHUTDOWN ;
 int gfs2_block_map ;
 scalar_t__ gfs2_is_stuffed (struct gfs2_inode*) ;
 int mpage_readpage (struct page*,int ) ;
 int stuffed_readpage (struct gfs2_inode*,struct page*) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int __gfs2_readpage(void *file, struct page *page)
{
 struct gfs2_inode *ip = GFS2_I(page->mapping->host);
 struct gfs2_sbd *sdp = GFS2_SB(page->mapping->host);
 int error;

 if (gfs2_is_stuffed(ip)) {
  error = stuffed_readpage(ip, page);
  unlock_page(page);
 } else {
  error = mpage_readpage(page, gfs2_block_map);
 }

 if (unlikely(test_bit(SDF_SHUTDOWN, &sdp->sd_flags)))
  return -EIO;

 return error;
}
