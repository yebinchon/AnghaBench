
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
 int bfd_openr (char*,int ) ;
 int extract_file (TYPE_1__*) ;
 int fprintf (int ,char*,char*,...) ;
 int maybequit () ;
 TYPE_2__* obfd ;
 char* program_name ;
 int stderr ;

void
ar_extract (struct list *list)
{
  if (!obfd)
    {
      fprintf (stderr, _("%s: no open archive\n"), program_name);
      maybequit ();
    }
  else
    {
      while (list)
 {

   bfd *member = obfd->archive_head;
   int found = 0;

   while (member && !found)
     {
       if (FILENAME_CMP (member->filename, list->name) == 0)
  {
    extract_file (member);
    found = 1;
  }

       member = member->archive_next;
     }

   if (!found)
     {
       bfd_openr (list->name, 0);
       fprintf (stderr, _("%s: can't find module file %s\n"),
         program_name, list->name);
     }

   list = list->next;
 }
    }
}
