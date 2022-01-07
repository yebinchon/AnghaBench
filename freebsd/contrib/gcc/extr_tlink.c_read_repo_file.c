
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* dir; int * args; void* main; int key; } ;
typedef TYPE_1__ file ;
typedef int FILE ;


 char* _ (char*) ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int ,char*,char*,int ) ;
 int freadsym (int *,TYPE_1__*,int) ;
 int fscanf (int *,char*,char*) ;
 int * getenv (char*) ;
 int obstack_free (int *,int ) ;
 void* pfgets (int *) ;
 int stderr ;
 int temporary_firstobj ;
 int temporary_obstack ;
 int tlink_verbose ;

__attribute__((used)) static void
read_repo_file (file *f)
{
  char c;
  FILE *stream = fopen (f->key, "r");

  if (tlink_verbose >= 2)
    fprintf (stderr, "%s", _("collect: reading %s\n"), f->key);

  while (fscanf (stream, "%c ", &c) == 1)
    {
      switch (c)
 {
 case 'A':
   f->args = pfgets (stream);
   break;
 case 'D':
   f->dir = pfgets (stream);
   break;
 case 'M':
   f->main = pfgets (stream);
   break;
 case 'P':
   freadsym (stream, f, 2);
   break;
 case 'C':
   freadsym (stream, f, 1);
   break;
 case 'O':
   freadsym (stream, f, 0);
   break;
 }
      obstack_free (&temporary_obstack, temporary_firstobj);
    }
  fclose (stream);
  if (f->args == ((void*)0))
    f->args = getenv ("COLLECT_GCC_OPTIONS");
  if (f->dir == ((void*)0))
    f->dir = ".";
}
