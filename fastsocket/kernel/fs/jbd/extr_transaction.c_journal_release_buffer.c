
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;

void
journal_release_buffer(handle_t *handle, struct buffer_head *bh)
{
 BUFFER_TRACE(bh, "entry");
}
