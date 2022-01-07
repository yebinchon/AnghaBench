
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct list {char* name; struct list* next; } ;
struct TYPE_4__ {struct TYPE_4__* archive_next; int filename; } ;
typedef TYPE_1__ bfd ;
struct TYPE_5__ {TYPE_1__* archive_head; } ;


 scalar_t__ FILENAME_CMP (int ,char*) ;
 char* _ (char*) ;
 TYPE_1__* bfd_openr (char*,int ) ;
 int fprintf (int ,char*,char*,...) ;
 int maybequit () ;
 TYPE_2__* obfd ;
 char* program_name ;
 int stderr ;

void
ar_replace (struct list *list)
{
  if (!obfd)
    {
      fprintf (stderr, _("%s: no open output archive\n"), program_name);
      maybequit ();
    }
  else
    {
      while (list)
 {

   bfd *member = obfd->archive_head;
   bfd **prev = &(obfd->archive_head);
   int found = 0;

   while (member)
     {
       if (FILENAME_CMP (member->filename, list->name) == 0)
  {

    bfd *abfd = bfd_openr (list->name, 0);

    if (!abfd)
      {
        fprintf (stderr, _("%s: can't open file %s\n"),
          program_name, list->name);
        maybequit ();
      }
    else
      {
        *prev = abfd;
        abfd->archive_next = member->archive_next;
        found = 1;
      }
  }
       else
  {
    prev = &(member->archive_next);
  }
       member = member->archive_next;
     }

   if (!found)
     {
       bfd *abfd = bfd_openr (list->name, 0);

       fprintf (stderr,_("%s: can't find module file %s\n"),
         program_name, list->name);
       if (!abfd)
  {
    fprintf (stderr, _("%s: can't open file %s\n"),
      program_name, list->name);
    maybequit ();
  }
       else
  *prev = abfd;
     }

   list = list->next;
 }
    }
}
