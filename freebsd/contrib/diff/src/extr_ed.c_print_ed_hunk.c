
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct change {int dummy; } ;
typedef size_t lin ;
typedef enum changes { ____Placeholder_changes } changes ;
struct TYPE_3__ {char** linbuf; } ;


 int OLD ;
 int analyze_hunk (struct change*,size_t*,size_t*,size_t*,size_t*) ;
 int begin_output () ;
 int* change_letter ;
 int debug_script (struct change*) ;
 TYPE_1__* files ;
 int fprintf (int ,char*,...) ;
 int outfile ;
 int print_1_line (char*,char**) ;
 int print_number_range (char,TYPE_1__*,size_t,size_t) ;

__attribute__((used)) static void
print_ed_hunk (struct change *hunk)
{
  lin f0, l0, f1, l1;
  enum changes changes;






  changes = analyze_hunk (hunk, &f0, &l0, &f1, &l1);
  if (!changes)
    return;

  begin_output ();


  print_number_range (',', &files[0], f0, l0);
  fprintf (outfile, "%c\n", change_letter[changes]);


  if (changes != OLD)
    {
      lin i;
      for (i = f1; i <= l1; i++)
 {
   if (files[1].linbuf[i][0] == '.' && files[1].linbuf[i][1] == '\n')
     {




       fprintf (outfile, "..\n.\ns/.//\na\n");
     }
   else
     print_1_line ("", &files[1].linbuf[i]);
 }

      fprintf (outfile, ".\n");
    }
}
