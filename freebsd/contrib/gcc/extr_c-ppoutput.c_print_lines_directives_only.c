
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int src_line; int outf; } ;


 int fwrite (void const*,int,size_t,int ) ;
 TYPE_1__ print ;

__attribute__((used)) static void
print_lines_directives_only (int lines, const void *buf, size_t size)
{
  print.src_line += lines;
  fwrite (buf, 1, size, print.outf);
}
