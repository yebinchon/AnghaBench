
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct list {char* name; struct list* next; } ;
struct TYPE_3__ {struct TYPE_3__* archive_next; int filename; } ;
typedef TYPE_1__ bfd ;
struct TYPE_4__ {TYPE_1__* archive_head; } ;


 scalar_t__ FILENAME_CMP (int ,char*) ;
 char* _ (char*) ;
 int fprintf (int ,char*,char*,...) ;
 int maybequit () ;
 TYPE_2__* obfd ;
 char* program_name ;
 int stderr ;

void
ar_delete (struct list *list)
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
       if (FILENAME_CMP(member->filename, list->name) == 0)
  {
    *prev = member->archive_next;
    found = 1;
  }
       else
  prev = &(member->archive_next);

       member = member->archive_next;
     }

   if (!found)
     {
       fprintf (stderr, _("%s: can't find module file %s\n"),
         program_name, list->name);
       maybequit ();
     }

   list = list->next;
 }
    }
}
