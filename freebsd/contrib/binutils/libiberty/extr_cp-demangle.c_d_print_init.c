
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d_print_info {int options; char last_char; scalar_t__ demangle_failure; void* opaque; int callback; int * modifiers; int * templates; scalar_t__ len; } ;
typedef int demangle_callbackref ;



__attribute__((used)) static void
d_print_init (struct d_print_info *dpi, int options,
              demangle_callbackref callback, void *opaque)
{
  dpi->options = options;
  dpi->len = 0;
  dpi->last_char = '\0';
  dpi->templates = ((void*)0);
  dpi->modifiers = ((void*)0);

  dpi->callback = callback;
  dpi->opaque = opaque;

  dpi->demangle_failure = 0;
}
