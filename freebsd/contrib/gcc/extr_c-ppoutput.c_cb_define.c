
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int source_location ;
typedef int cpp_reader ;
typedef int cpp_hashnode ;
struct TYPE_4__ {scalar_t__ to_line; } ;
struct TYPE_3__ {int src_line; int outf; } ;


 scalar_t__ NODE_NAME (int *) ;
 scalar_t__ cpp_macro_definition (int *,int *) ;
 char flag_dump_macros ;
 int fputs (char const*,int ) ;
 int line_table ;
 TYPE_2__* linemap_lookup (int *,int ) ;
 int maybe_print_line (int ) ;
 TYPE_1__ print ;
 int putc (char,int ) ;

__attribute__((used)) static void
cb_define (cpp_reader *pfile, source_location line, cpp_hashnode *node)
{
  maybe_print_line (line);
  fputs ("#define ", print.outf);


  if (flag_dump_macros == 'D')
    fputs ((const char *) cpp_macro_definition (pfile, node),
    print.outf);
  else
    fputs ((const char *) NODE_NAME (node), print.outf);

  putc ('\n', print.outf);
  if (linemap_lookup (&line_table, line)->to_line != 0)
    print.src_line++;
}
