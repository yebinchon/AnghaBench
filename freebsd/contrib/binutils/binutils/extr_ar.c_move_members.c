
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int filename; struct TYPE_7__* archive_next; } ;
typedef TYPE_1__ bfd ;


 scalar_t__ FILENAME_CMP (int ,int ) ;
 int _ (char*) ;
 int fatal (int ,char*,int ) ;
 TYPE_1__** get_pos_bfd (TYPE_1__**,int ,int *) ;
 int normalize (char*,TYPE_1__*) ;
 int pos_end ;
 int printf (char*,char*) ;
 scalar_t__ verbose ;
 int write_archive (TYPE_1__*) ;

__attribute__((used)) static void
move_members (bfd *arch, char **files_to_move)
{
  bfd **after_bfd;
  bfd **current_ptr_ptr;

  for (; *files_to_move; ++files_to_move)
    {
      current_ptr_ptr = &(arch->archive_next);
      while (*current_ptr_ptr)
 {
   bfd *current_ptr = *current_ptr_ptr;
   if (FILENAME_CMP (normalize (*files_to_move, arch),
       current_ptr->filename) == 0)
     {


       bfd *link;
       *current_ptr_ptr = current_ptr->archive_next;


       after_bfd = get_pos_bfd (&arch->archive_next, pos_end, ((void*)0));
       link = *after_bfd;
       *after_bfd = current_ptr;
       current_ptr->archive_next = link;

       if (verbose)
  printf ("m - %s\n", *files_to_move);

       goto next_file;
     }

   current_ptr_ptr = &((*current_ptr_ptr)->archive_next);
 }

      fatal (_("no entry %s in archive %s!"), *files_to_move, arch->filename);

    next_file:;
    }

  write_archive (arch);
}
