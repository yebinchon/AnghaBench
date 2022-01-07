
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_buffer {int text; scalar_t__ size; int shared; } ;


 int gdb_assert (int) ;
 int xfree (int ) ;

__attribute__((used)) static void
free_buffer (struct macro_buffer *b)
{
  gdb_assert (! b->shared);
  if (b->size)
    xfree (b->text);
}
