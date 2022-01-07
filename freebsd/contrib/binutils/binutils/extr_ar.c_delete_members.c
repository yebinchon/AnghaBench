
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef void* bfd_boolean ;
struct TYPE_5__ {struct TYPE_5__* archive_next; int filename; void* has_armap; } ;
typedef TYPE_1__ bfd ;


 void* FALSE ;
 scalar_t__ FILENAME_CMP (int ,int ) ;
 void* TRUE ;
 char* _ (char*) ;
 int counted_name_counter ;
 scalar_t__ counted_name_mode ;
 int normalize (char*,TYPE_1__*) ;
 int * output_filename ;
 int printf (char*,char*) ;
 int strcmp (char*,char*) ;
 scalar_t__ verbose ;
 int write_archive (TYPE_1__*) ;
 int write_armap ;

__attribute__((used)) static void
delete_members (bfd *arch, char **files_to_delete)
{
  bfd **current_ptr_ptr;
  bfd_boolean found;
  bfd_boolean something_changed = FALSE;
  int match_count;

  for (; *files_to_delete != ((void*)0); ++files_to_delete)
    {






      if (!strcmp (*files_to_delete, "__.SYMDEF"))
 {
   arch->has_armap = FALSE;
   write_armap = -1;
   continue;
 }

      found = FALSE;
      match_count = 0;
      current_ptr_ptr = &(arch->archive_next);
      while (*current_ptr_ptr)
 {
   if (FILENAME_CMP (normalize (*files_to_delete, arch),
       (*current_ptr_ptr)->filename) == 0)
     {
       ++match_count;
       if (counted_name_mode
    && match_count != counted_name_counter)
  {


  }
       else
  {
    found = TRUE;
    something_changed = TRUE;
    if (verbose)
      printf ("d - %s\n",
       *files_to_delete);
    *current_ptr_ptr = ((*current_ptr_ptr)->archive_next);
    goto next_file;
  }
     }

   current_ptr_ptr = &((*current_ptr_ptr)->archive_next);
 }

      if (verbose && !found)
 {

   printf (_("No member named `%s'\n"), *files_to_delete);
 }
    next_file:
      ;
    }

  if (something_changed)
    write_archive (arch);
  else
    output_filename = ((void*)0);
}
