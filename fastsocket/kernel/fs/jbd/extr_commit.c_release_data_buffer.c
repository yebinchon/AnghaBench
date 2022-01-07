
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;


 scalar_t__ buffer_freed (struct buffer_head*) ;
 int clear_buffer_freed (struct buffer_head*) ;
 int put_bh (struct buffer_head*) ;
 int release_buffer_page (struct buffer_head*) ;

__attribute__((used)) static void release_data_buffer(struct buffer_head *bh)
{
 if (buffer_freed(bh)) {
  clear_buffer_freed(bh);
  release_buffer_page(bh);
 } else
  put_bh(bh);
}
