
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int source_location ;
typedef int cpp_reader ;
struct TYPE_2__ {int src_line; int outf; } ;


 int cpp_output_line (int *,int ) ;
 int fputs (char*,int ) ;
 int maybe_print_line (int ) ;
 TYPE_1__ print ;

__attribute__((used)) static void
cb_def_pragma (cpp_reader *pfile, source_location line)
{
  maybe_print_line (line);
  fputs ("#pragma ", print.outf);
  cpp_output_line (pfile, print.outf);
  print.src_line++;
}
