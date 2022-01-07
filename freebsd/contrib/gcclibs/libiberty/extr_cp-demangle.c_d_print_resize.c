
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d_print_info {char* buf; size_t len; size_t alc; int allocation_failure; } ;


 int free (char*) ;
 scalar_t__ realloc (char*,size_t) ;

__attribute__((used)) static void
d_print_resize (struct d_print_info *dpi, size_t add)
{
  size_t need;

  if (dpi->buf == ((void*)0))
    return;
  need = dpi->len + add;
  while (need > dpi->alc)
    {
      size_t newalc;
      char *newbuf;

      newalc = dpi->alc * 2;
      newbuf = (char *) realloc (dpi->buf, newalc);
      if (newbuf == ((void*)0))
 {
   free (dpi->buf);
   dpi->buf = ((void*)0);
   dpi->allocation_failure = 1;
   return;
 }
      dpi->buf = newbuf;
      dpi->alc = newalc;
    }
}
