
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct change {int dummy; } ;
typedef size_t lin ;
typedef enum changes { ____Placeholder_changes } changes ;
struct TYPE_3__ {int * linbuf; } ;


 int NEW ;
 int OLD ;
 int analyze_hunk (struct change*,size_t*,size_t*,size_t*,size_t*) ;
 int begin_output () ;
 TYPE_1__* files ;
 int fprintf (int ,char*,...) ;
 int outfile ;
 int print_1_line (char*,int *) ;
 int translate_range (TYPE_1__*,size_t,size_t,long*,long*) ;

__attribute__((used)) static void
print_rcs_hunk (struct change *hunk)
{
  lin i, f0, l0, f1, l1;
  long int tf0, tl0, tf1, tl1;


  enum changes changes = analyze_hunk (hunk, &f0, &l0, &f1, &l1);
  if (!changes)
    return;

  begin_output ();

  translate_range (&files[0], f0, l0, &tf0, &tl0);

  if (changes & OLD)
    {
      fprintf (outfile, "d");


      fprintf (outfile, "%ld %ld\n", tf0, tf0 <= tl0 ? tl0 - tf0 + 1 : 1);
    }

  if (changes & NEW)
    {
      fprintf (outfile, "a");


      translate_range (&files[1], f1, l1, &tf1, &tl1);
      fprintf (outfile, "%ld %ld\n", tl0, tf1 <= tl1 ? tl1 - tf1 + 1 : 1);


      for (i = f1; i <= l1; i++)
 print_1_line ("", &files[1].linbuf[i]);
    }
}
