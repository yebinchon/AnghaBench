
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct stat {scalar_t__ st_mtime; } ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_10__ {char* filename; struct TYPE_10__* archive_next; int * arelt_data; } ;
typedef TYPE_1__ bfd ;


 scalar_t__ ENOENT ;
 scalar_t__ FALSE ;
 scalar_t__ FILENAME_CMP (int ,int ) ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 scalar_t__ ar_emul_append (TYPE_1__**,char*,int ) ;
 scalar_t__ ar_emul_replace (TYPE_1__**,char*,int ) ;
 int bfd_fatal (char*) ;
 scalar_t__ bfd_stat_arch_elt (TYPE_1__*,struct stat*) ;
 scalar_t__ errno ;
 int fatal (int ,char*) ;
 TYPE_1__** get_pos_bfd (TYPE_1__**,int ,char*) ;
 scalar_t__ newer_only ;
 int normalize (char*,TYPE_1__*) ;
 int * output_filename ;
 int pos_after ;
 int pos_end ;
 scalar_t__ stat (char*,struct stat*) ;
 int verbose ;
 int write_archive (TYPE_1__*) ;

__attribute__((used)) static void
replace_members (bfd *arch, char **files_to_move, bfd_boolean quick)
{
  bfd_boolean changed = FALSE;
  bfd **after_bfd;
  bfd *current;
  bfd **current_ptr;

  while (files_to_move && *files_to_move)
    {
      if (! quick)
 {
   current_ptr = &arch->archive_next;
   while (*current_ptr)
     {
       current = *current_ptr;



       if (FILENAME_CMP (normalize (*files_to_move, arch),
    normalize (current->filename, arch)) == 0
    && current->arelt_data != ((void*)0))
  {
    if (newer_only)
      {
        struct stat fsbuf, asbuf;

        if (stat (*files_to_move, &fsbuf) != 0)
   {
     if (errno != ENOENT)
       bfd_fatal (*files_to_move);
     goto next_file;
   }
        if (bfd_stat_arch_elt (current, &asbuf) != 0)

   fatal (_("internal stat error on %s"),
          current->filename);

        if (fsbuf.st_mtime <= asbuf.st_mtime)
   goto next_file;
      }

    after_bfd = get_pos_bfd (&arch->archive_next, pos_after,
        current->filename);
    if (ar_emul_replace (after_bfd, *files_to_move,
           verbose))
      {

        *current_ptr = (*current_ptr)->archive_next;
        changed = TRUE;
      }

    goto next_file;
  }
       current_ptr = &(current->archive_next);
     }
 }


      after_bfd = get_pos_bfd (&arch->archive_next, pos_end, ((void*)0));

      if (ar_emul_append (after_bfd, *files_to_move, verbose))
 changed = TRUE;

    next_file:;

      files_to_move++;
    }

  if (changed)
    write_archive (arch);
  else
    output_filename = ((void*)0);
}
