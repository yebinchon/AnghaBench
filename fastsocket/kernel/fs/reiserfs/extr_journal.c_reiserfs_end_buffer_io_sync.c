
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_bdev; int b_blocknr; } ;


 int BDEVNAME_SIZE ;
 int bdevname (int ,char*) ;
 scalar_t__ buffer_journaled (struct buffer_head*) ;
 int clear_buffer_uptodate (struct buffer_head*) ;
 int reiserfs_warning (int *,char*,char*,int ,int ) ;
 int release_buffer_page (struct buffer_head*) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

__attribute__((used)) static void reiserfs_end_buffer_io_sync(struct buffer_head *bh, int uptodate)
{
 char b[BDEVNAME_SIZE];

 if (buffer_journaled(bh)) {
  reiserfs_warning(((void*)0), "clm-2084",
     "pinned buffer %lu:%s sent to disk",
     bh->b_blocknr, bdevname(bh->b_bdev, b));
 }
 if (uptodate)
  set_buffer_uptodate(bh);
 else
  clear_buffer_uptodate(bh);

 unlock_buffer(bh);
 release_buffer_page(bh);
}
