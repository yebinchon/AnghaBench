
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list {int dummy; } ;
typedef int bfd ;


 char* _ (char*) ;
 int ar_addlib_doer ;
 int fprintf (int ,char*,char*) ;
 int map_over_list (int *,int ,struct list*) ;
 int maybequit () ;
 int * obfd ;
 int * open_inarch (char*,char*) ;
 char* program_name ;
 int stderr ;

void
ar_addlib (char *name, struct list *list)
{
  if (obfd == ((void*)0))
    {
      fprintf (stderr, _("%s: no output archive specified yet\n"), program_name);
      maybequit ();
    }
  else
    {
      bfd *arch;

      arch = open_inarch (name, (char *) ((void*)0));
      if (arch != ((void*)0))
 map_over_list (arch, ar_addlib_doer, list);


    }
}
