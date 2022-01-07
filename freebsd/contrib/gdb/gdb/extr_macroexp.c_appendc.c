
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_buffer {int len; int size; int* text; } ;


 int resize_buffer (struct macro_buffer*,int) ;

__attribute__((used)) static void
appendc (struct macro_buffer *b, int c)
{
  int new_len = b->len + 1;

  if (new_len > b->size)
    resize_buffer (b, new_len);

  b->text[b->len] = c;
  b->len = new_len;
}
