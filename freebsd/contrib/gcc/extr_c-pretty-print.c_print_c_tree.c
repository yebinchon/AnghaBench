
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
typedef int pp_needs_newline ;
typedef int c_pretty_printer ;
struct TYPE_5__ {TYPE_1__* buffer; } ;
struct TYPE_4__ {int * stream; } ;
typedef int FILE ;


 TYPE_2__* pp_base (int *) ;
 int pp_c_pretty_printer_init (int *) ;
 int pp_construct (TYPE_2__*,int *,int ) ;
 int pp_flush (int *) ;
 int pp_newline (int *) ;
 int pp_statement (int *,int ) ;

void
print_c_tree (FILE *file, tree t)
{
  static c_pretty_printer pp_rec;
  static bool initialized = 0;
  c_pretty_printer *pp = &pp_rec;

  if (!initialized)
    {
      initialized = 1;
      pp_construct (pp_base (pp), ((void*)0), 0);
      pp_c_pretty_printer_init (pp);
      pp_needs_newline (pp) = 1;
    }
  pp_base (pp)->buffer->stream = file;

  pp_statement (pp, t);

  pp_newline (pp);
  pp_flush (pp);
}
