
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ lin ;
struct TYPE_2__ {int * linbuf; } ;


 TYPE_1__* files ;
 int fprintf (int ,char*,long,long) ;
 int left_column ;
 scalar_t__ next0 ;
 scalar_t__ next1 ;
 int outfile ;
 int print_1sdiff_line (int *,char,int *) ;
 scalar_t__ sdiff_merge_assist ;
 int suppress_common_lines ;

__attribute__((used)) static void
print_sdiff_common_lines (lin limit0, lin limit1)
{
  lin i0 = next0, i1 = next1;

  if (!suppress_common_lines && (i0 != limit0 || i1 != limit1))
    {
      if (sdiff_merge_assist)
 {
   long int len0 = limit0 - i0;
   long int len1 = limit1 - i1;
   fprintf (outfile, "i%ld,%ld\n", len0, len1);
 }

      if (!left_column)
 {
   while (i0 != limit0 && i1 != limit1)
     print_1sdiff_line (&files[0].linbuf[i0++], ' ',
          &files[1].linbuf[i1++]);
   while (i1 != limit1)
     print_1sdiff_line (0, ')', &files[1].linbuf[i1++]);
 }
      while (i0 != limit0)
 print_1sdiff_line (&files[0].linbuf[i0++], '(', 0);
    }

  next0 = limit0;
  next1 = limit1;
}
