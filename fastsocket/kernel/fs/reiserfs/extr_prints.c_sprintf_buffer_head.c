
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_bdev; int b_page; int b_state; int b_count; scalar_t__ b_blocknr; int b_size; } ;


 int BDEVNAME_SIZE ;
 int atomic_read (int *) ;
 char* bdevname (int ,char*) ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 scalar_t__ buffer_locked (struct buffer_head*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 int sprintf (char*,char*,char*,int ,unsigned long long,int ,int ,int ,char*,char*,char*) ;

__attribute__((used)) static void sprintf_buffer_head(char *buf, struct buffer_head *bh)
{
 char b[BDEVNAME_SIZE];

 sprintf(buf,
  "dev %s, size %zd, blocknr %llu, count %d, state 0x%lx, page %p, (%s, %s, %s)",
  bdevname(bh->b_bdev, b), bh->b_size,
  (unsigned long long)bh->b_blocknr, atomic_read(&(bh->b_count)),
  bh->b_state, bh->b_page,
  buffer_uptodate(bh) ? "UPTODATE" : "!UPTODATE",
  buffer_dirty(bh) ? "DIRTY" : "CLEAN",
  buffer_locked(bh) ? "LOCKED" : "UNLOCKED");
}
