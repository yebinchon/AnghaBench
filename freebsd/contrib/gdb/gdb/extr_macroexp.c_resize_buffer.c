
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_buffer {int size; int text; int shared; } ;


 int gdb_assert (int) ;
 int xrealloc (int ,int) ;

__attribute__((used)) static void
resize_buffer (struct macro_buffer *b, int n)
{

  gdb_assert (! b->shared);

  if (b->size == 0)
    b->size = n;
  else
    while (b->size <= n)
      b->size *= 2;

  b->text = xrealloc (b->text, b->size);
}
