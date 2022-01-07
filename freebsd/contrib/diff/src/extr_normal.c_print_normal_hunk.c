
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct change {int dummy; } ;
typedef size_t lin ;
typedef enum changes { ____Placeholder_changes } changes ;
struct TYPE_3__ {int * linbuf; } ;


 int CHANGED ;
 int NEW ;
 int OLD ;
 int analyze_hunk (struct change*,size_t*,size_t*,size_t*,size_t*) ;
 int begin_output () ;
 int* change_letter ;
 TYPE_1__* files ;
 int fprintf (int ,char*,...) ;
 int outfile ;
 int print_1_line (char*,int *) ;
 int print_number_range (char,TYPE_1__*,size_t,size_t) ;

__attribute__((used)) static void
print_normal_hunk (struct change *hunk)
{
  lin first0, last0, first1, last1;
  register lin i;


  enum changes changes = analyze_hunk (hunk, &first0, &last0, &first1, &last1);
  if (!changes)
    return;

  begin_output ();


  print_number_range (',', &files[0], first0, last0);
  fprintf (outfile, "%c", change_letter[changes]);
  print_number_range (',', &files[1], first1, last1);
  fprintf (outfile, "\n");


  if (changes & OLD)
    for (i = first0; i <= last0; i++)
      print_1_line ("<", &files[0].linbuf[i]);

  if (changes == CHANGED)
    fprintf (outfile, "---\n");


  if (changes & NEW)
    for (i = first1; i <= last1; i++)
      print_1_line (">", &files[1].linbuf[i]);
}
