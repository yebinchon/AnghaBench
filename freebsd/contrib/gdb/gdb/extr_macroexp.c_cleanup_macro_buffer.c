
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_buffer {int dummy; } ;


 int free_buffer (struct macro_buffer*) ;

__attribute__((used)) static void
cleanup_macro_buffer (void *untyped_buf)
{
  free_buffer ((struct macro_buffer *) untyped_buf);
}
