
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int mark_buffer_dirty (struct buffer_head*) ;
 int set_buffer_uptodate (struct buffer_head*) ;

__attribute__((used)) static int ocfs2_zero_func(handle_t *handle, struct buffer_head *bh)
{
 set_buffer_uptodate(bh);
 mark_buffer_dirty(bh);
 return 0;
}
