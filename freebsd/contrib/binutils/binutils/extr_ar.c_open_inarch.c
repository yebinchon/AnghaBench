
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct stat {int dummy; } ;
struct TYPE_13__ {struct TYPE_13__* archive_next; } ;
typedef TYPE_1__ bfd ;


 scalar_t__ ENOENT ;
 int PROGRESS (int) ;
 int _ (char*) ;
 int bfd_archive ;
 scalar_t__ bfd_check_format (TYPE_1__*,int ) ;
 int bfd_check_format_matches (TYPE_1__*,int ,char***) ;
 int bfd_close (TYPE_1__*) ;
 scalar_t__ bfd_error_file_ambiguously_recognized ;
 int bfd_error_no_error ;
 scalar_t__ bfd_error_no_more_archived_files ;
 int bfd_fatal (char const*) ;
 scalar_t__ bfd_get_error () ;
 char* bfd_get_target (TYPE_1__*) ;
 int bfd_nonfatal (char const*) ;
 int bfd_object ;
 TYPE_1__* bfd_openr (char const*,char const*) ;
 TYPE_1__* bfd_openr_next_archived_file (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* bfd_openw (char const*,char const*) ;
 int bfd_set_error (int ) ;
 int bfd_set_format (TYPE_1__*,int ) ;
 scalar_t__ errno ;
 int fprintf (int ,char*,char*) ;
 int free (char**) ;
 int list_matching_formats (char**) ;
 int maybequit () ;
 int non_fatal (int ,char const*) ;
 int operation_alters_arch ;
 char const* output_filename ;
 int perror (char const*) ;
 char* program_name ;
 int silent_create ;
 scalar_t__ stat (char const*,struct stat*) ;
 int stderr ;
 int xexit (int) ;

bfd *
open_inarch (const char *archive_filename, const char *file)
{
  const char *target;
  bfd **last_one;
  bfd *next_one;
  struct stat sbuf;
  bfd *arch;
  char **matching;

  bfd_set_error (bfd_error_no_error);

  target = ((void*)0);

  if (stat (archive_filename, &sbuf) != 0)
    {
      if (errno != ENOENT)
 bfd_fatal (archive_filename);


      if (!operation_alters_arch)
 {
   fprintf (stderr, "%s: ", program_name);
   perror (archive_filename);
   maybequit ();
   return ((void*)0);
 }



      if (file != ((void*)0))
 {
   bfd *obj;

   obj = bfd_openr (file, ((void*)0));
   if (obj != ((void*)0))
     {
       if (bfd_check_format (obj, bfd_object))
  target = bfd_get_target (obj);
       (void) bfd_close (obj);
     }
 }


      arch = bfd_openw (archive_filename, target);
      if (arch == ((void*)0)
   || ! bfd_set_format (arch, bfd_archive)
   || ! bfd_close (arch))
 bfd_fatal (archive_filename);
      else if (!silent_create)
        non_fatal (_("creating %s"), archive_filename);


      output_filename = archive_filename;
    }

  arch = bfd_openr (archive_filename, target);
  if (arch == ((void*)0))
    {
    bloser:
      bfd_fatal (archive_filename);
    }

  if (! bfd_check_format_matches (arch, bfd_archive, &matching))
    {
      bfd_nonfatal (archive_filename);
      if (bfd_get_error () == bfd_error_file_ambiguously_recognized)
 {
   list_matching_formats (matching);
   free (matching);
 }
      xexit (1);
    }

  last_one = &(arch->archive_next);

  for (next_one = bfd_openr_next_archived_file (arch, ((void*)0));
       next_one;
       next_one = bfd_openr_next_archived_file (arch, next_one))
    {
      PROGRESS (1);
      *last_one = next_one;
      last_one = &next_one->archive_next;
    }
  *last_one = (bfd *) ((void*)0);
  if (bfd_get_error () != bfd_error_no_more_archived_files)
    goto bloser;
  return arch;
}
