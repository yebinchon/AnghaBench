
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int arc_mach_type ;
 int fprintf (int *,char*,int) ;

void
md_show_usage (FILE *stream)
{
  fprintf (stream, "ARC Options:\n  -marc[5|6|7|8]          select processor variant (default arc%d)\n  -EB                     assemble code for a big endian cpu\n  -EL                     assemble code for a little endian cpu\n", arc_mach_type + 5);




}
