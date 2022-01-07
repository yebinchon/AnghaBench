
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list {int dummy; } ;
typedef int bfd ;


 char* _ (char*) ;
 int ar_directory_doer ;
 int bfd_close (int *) ;
 int fclose (scalar_t__) ;
 scalar_t__ fopen (char*,char*) ;
 int fprintf (int ,char*,char*) ;
 int map_over_list (int *,int ,struct list*) ;
 int * open_inarch (char*,char*) ;
 scalar_t__ outfile ;
 int stderr ;
 scalar_t__ stdout ;

void
ar_directory (char *ar_name, struct list *list, char *output)
{
  bfd *arch;

  arch = open_inarch (ar_name, (char *) ((void*)0));
  if (output)
    {
      outfile = fopen(output,"w");
      if (outfile == 0)
 {
   outfile = stdout;
   fprintf (stderr,_("Can't open file %s\n"), output);
   output = 0;
 }
    }
  else
    outfile = stdout;

  map_over_list (arch, ar_directory_doer, list);

  bfd_close (arch);

  if (output)
   fclose (outfile);
}
