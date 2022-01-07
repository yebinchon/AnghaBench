
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_print_info {int options; int alc; char* buf; size_t allocation_failure; int * modifiers; int * templates; scalar_t__ len; } ;


 int d_append_char (struct d_print_info*,char) ;
 int d_print_comp (struct d_print_info*,struct demangle_component const*) ;
 scalar_t__ malloc (int) ;

char *
cplus_demangle_print (int options, const struct demangle_component *dc,
                      int estimate, size_t *palc)
{
  struct d_print_info dpi;

  dpi.options = options;

  dpi.alc = estimate + 1;
  dpi.buf = (char *) malloc (dpi.alc);
  if (dpi.buf == ((void*)0))
    {
      *palc = 1;
      return ((void*)0);
    }

  dpi.len = 0;
  dpi.templates = ((void*)0);
  dpi.modifiers = ((void*)0);

  dpi.allocation_failure = 0;

  d_print_comp (&dpi, dc);

  d_append_char (&dpi, '\0');

  if (dpi.buf != ((void*)0))
    *palc = dpi.alc;
  else
    *palc = dpi.allocation_failure;

  return dpi.buf;
}
