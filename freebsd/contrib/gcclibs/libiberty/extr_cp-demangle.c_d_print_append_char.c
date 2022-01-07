
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d_print_info {int* buf; size_t len; size_t alc; } ;


 int d_print_resize (struct d_print_info*,int) ;

__attribute__((used)) static void
d_print_append_char (struct d_print_info *dpi, int c)
{
  if (dpi->buf != ((void*)0))
    {
      if (dpi->len >= dpi->alc)
 {
   d_print_resize (dpi, 1);
   if (dpi->buf == ((void*)0))
     return;
 }

      dpi->buf[dpi->len] = c;
      ++dpi->len;
    }
}
