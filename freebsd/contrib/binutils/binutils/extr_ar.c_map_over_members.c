
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct stat {int dummy; } ;
typedef int bfd_boolean ;
struct TYPE_7__ {int * filename; struct TYPE_7__* archive_next; } ;
typedef TYPE_1__ bfd ;


 int FALSE ;
 int FILENAME_CMP (int ,int *) ;
 int PROGRESS (int) ;
 int TRUE ;
 char* _ (char*) ;
 int bfd_stat_arch_elt (TYPE_1__*,struct stat*) ;
 int counted_name_counter ;
 scalar_t__ counted_name_mode ;
 int fprintf (int ,char*,char*) ;
 int normalize (char*,TYPE_1__*) ;
 int stderr ;

__attribute__((used)) static void
map_over_members (bfd *arch, void (*function)(bfd *), char **files, int count)
{
  bfd *head;
  int match_count;

  if (count == 0)
    {
      for (head = arch->archive_next; head; head = head->archive_next)
 {
   PROGRESS (1);
   function (head);
 }
      return;
    }







  for (; count > 0; files++, count--)
    {
      bfd_boolean found = FALSE;

      match_count = 0;
      for (head = arch->archive_next; head; head = head->archive_next)
 {
   PROGRESS (1);
   if (head->filename == ((void*)0))
     {


       struct stat buf;
       bfd_stat_arch_elt (head, &buf);
     }
   if ((head->filename != ((void*)0)) &&
       (!FILENAME_CMP (normalize (*files, arch), head->filename)))
     {
       ++match_count;
       if (counted_name_mode
    && match_count != counted_name_counter)
  {


    continue;
  }

       found = TRUE;
       function (head);
     }
 }
      if (!found)

 fprintf (stderr, _("no entry %s in archive\n"), *files);
    }
}
