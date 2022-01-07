
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct list {char* name; struct list* next; } ;
typedef int bfd_boolean ;
struct TYPE_7__ {int * filename; struct TYPE_7__* archive_next; } ;
typedef TYPE_1__ bfd ;


 int FALSE ;
 scalar_t__ FILENAME_CMP (char*,int *) ;
 int TRUE ;
 char* _ (char*) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
map_over_list (bfd *arch, void (*function) (bfd *, bfd *), struct list *list)
{
  bfd *head;

  if (list == ((void*)0))
    {
      bfd *next;

      head = arch->archive_next;
      while (head != ((void*)0))
 {
   next = head->archive_next;
   function (head, (bfd *) ((void*)0));
   head = next;
 }
    }
  else
    {
      struct list *ptr;






      for (ptr = list; ptr; ptr = ptr->next)
 {
   bfd_boolean found = FALSE;
   bfd *prev = arch;

   for (head = arch->archive_next; head; head = head->archive_next)
     {
       if (head->filename != ((void*)0)
    && FILENAME_CMP (ptr->name, head->filename) == 0)
  {
    found = TRUE;
    function (head, prev);
  }
       prev = head;
     }
   if (! found)
     fprintf (stderr, _("No entry %s in archive.\n"), ptr->name);
 }
    }
}
