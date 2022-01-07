
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d_print_info {scalar_t__ len; scalar_t__ alc; int * buf; } ;


 int d_print_resize (struct d_print_info*,size_t) ;
 int memcpy (int *,char const*,size_t) ;

__attribute__((used)) static void
d_print_append_buffer (struct d_print_info *dpi, const char *s, size_t l)
{
  if (dpi->buf != ((void*)0))
    {
      if (dpi->len + l > dpi->alc)
 {
   d_print_resize (dpi, l);
   if (dpi->buf == ((void*)0))
     return;
 }

      memcpy (dpi->buf + dpi->len, s, l);
      dpi->len += l;
    }
}
