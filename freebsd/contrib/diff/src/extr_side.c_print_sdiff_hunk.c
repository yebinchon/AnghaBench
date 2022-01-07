
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct change {int dummy; } ;
typedef int lin ;
typedef enum changes { ____Placeholder_changes } changes ;
struct TYPE_2__ {int * linbuf; } ;


 int CHANGED ;
 int NEW ;
 int OLD ;
 int analyze_hunk (struct change*,int*,int*,int*,int*) ;
 TYPE_1__* files ;
 int fprintf (int ,char*,long,long) ;
 int next0 ;
 int next1 ;
 int outfile ;
 int print_1sdiff_line (int *,char,int *) ;
 int print_sdiff_common_lines (int,int) ;
 scalar_t__ sdiff_merge_assist ;

__attribute__((used)) static void
print_sdiff_hunk (struct change *hunk)
{
  lin first0, last0, first1, last1;
  register lin i, j;


  enum changes changes =
    analyze_hunk (hunk, &first0, &last0, &first1, &last1);
  if (!changes)
    return;


  print_sdiff_common_lines (first0, first1);

  if (sdiff_merge_assist)
    {
      long int len0 = last0 - first0 + 1;
      long int len1 = last1 - first1 + 1;
      fprintf (outfile, "c%ld,%ld\n", len0, len1);
    }


  if (changes == CHANGED)
    {
      for (i = first0, j = first1; i <= last0 && j <= last1; i++, j++)
 print_1sdiff_line (&files[0].linbuf[i], '|', &files[1].linbuf[j]);
      changes = (i <= last0 ? OLD : 0) + (j <= last1 ? NEW : 0);
      next0 = first0 = i;
      next1 = first1 = j;
    }


  if (changes & NEW)
    {
      for (j = first1; j <= last1; ++j)
 print_1sdiff_line (0, '>', &files[1].linbuf[j]);
      next1 = j;
    }


  if (changes & OLD)
    {
      for (i = first0; i <= last0; ++i)
 print_1sdiff_line (&files[0].linbuf[i], '<', 0);
      next0 = i;
    }
}
