
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_buffer {int len; int size; scalar_t__ text; } ;


 int memcpy (scalar_t__,char*,int) ;
 int resize_buffer (struct macro_buffer*,int) ;

__attribute__((used)) static void
appendmem (struct macro_buffer *b, char *addr, int len)
{
  int new_len = b->len + len;

  if (new_len > b->size)
    resize_buffer (b, new_len);

  memcpy (b->text + b->len, addr, len);
  b->len = new_len;
}
