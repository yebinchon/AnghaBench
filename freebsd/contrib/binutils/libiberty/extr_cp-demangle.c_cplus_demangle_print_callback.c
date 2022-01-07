
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_print_info {int dummy; } ;
typedef int demangle_callbackref ;


 int d_print_comp (struct d_print_info*,struct demangle_component const*) ;
 int d_print_flush (struct d_print_info*) ;
 int d_print_init (struct d_print_info*,int,int ,void*) ;
 int d_print_saw_error (struct d_print_info*) ;

int
cplus_demangle_print_callback (int options,
                               const struct demangle_component *dc,
                               demangle_callbackref callback, void *opaque)
{
  struct d_print_info dpi;

  d_print_init (&dpi, options, callback, opaque);

  d_print_comp (&dpi, dc);

  d_print_flush (&dpi);

  return ! d_print_saw_error (&dpi);
}
