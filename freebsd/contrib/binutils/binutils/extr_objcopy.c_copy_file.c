
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bfd_error_type ;
typedef int bfd_boolean ;
typedef int bfd ;


 int FALSE ;
 int RETURN_NONFATAL (char const*) ;
 int TRUE ;
 int bfd_archive ;
 scalar_t__ bfd_check_format (int *,int ) ;
 scalar_t__ bfd_check_format_matches (int *,int ,char***) ;
 int bfd_close (int *) ;
 int bfd_core ;
 scalar_t__ bfd_error_file_ambiguously_recognized ;
 scalar_t__ bfd_get_error () ;
 char* bfd_get_target (int *) ;
 int bfd_nonfatal (char const*) ;
 int bfd_object ;
 int * bfd_openr (char const*,char const*) ;
 int * bfd_openw (char const*,char const*) ;
 int bfd_set_error (scalar_t__) ;
 int copy_archive (int *,int *,char const*,int ) ;
 int copy_object (int *,int *) ;
 int free (char**) ;
 int get_file_size (char const*) ;
 int list_matching_formats (char**) ;
 int status ;

__attribute__((used)) static void
copy_file (const char *input_filename, const char *output_filename,
    const char *input_target, const char *output_target)
{
  bfd *ibfd;
  char **obj_matching;
  char **core_matching;

  if (get_file_size (input_filename) < 1)
    {
      status = 1;
      return;
    }



  ibfd = bfd_openr (input_filename, input_target);
  if (ibfd == ((void*)0))
    RETURN_NONFATAL (input_filename);

  if (bfd_check_format (ibfd, bfd_archive))
    {
      bfd_boolean force_output_target;
      bfd *obfd;



      if (output_target == ((void*)0))
 {
   output_target = bfd_get_target (ibfd);
   force_output_target = FALSE;
 }
      else
 force_output_target = TRUE;

      obfd = bfd_openw (output_filename, output_target);
      if (obfd == ((void*)0))
 RETURN_NONFATAL (output_filename);

      copy_archive (ibfd, obfd, output_target, force_output_target);
    }
  else if (bfd_check_format_matches (ibfd, bfd_object, &obj_matching))
    {
      bfd *obfd;
    do_copy:



      if (output_target == ((void*)0))
 output_target = bfd_get_target (ibfd);

      obfd = bfd_openw (output_filename, output_target);
      if (obfd == ((void*)0))
 RETURN_NONFATAL (output_filename);

      if (! copy_object (ibfd, obfd))
 status = 1;

      if (!bfd_close (obfd))
 RETURN_NONFATAL (output_filename);

      if (!bfd_close (ibfd))
 RETURN_NONFATAL (input_filename);

    }
  else
    {
      bfd_error_type obj_error = bfd_get_error ();
      bfd_error_type core_error;

      if (bfd_check_format_matches (ibfd, bfd_core, &core_matching))
 {

   if (obj_error == bfd_error_file_ambiguously_recognized)
     free (obj_matching);
   goto do_copy;
 }

      core_error = bfd_get_error ();

      if (obj_error != core_error)
 bfd_set_error (obj_error);

      bfd_nonfatal (input_filename);

      if (obj_error == bfd_error_file_ambiguously_recognized)
 {
   list_matching_formats (obj_matching);
   free (obj_matching);
 }
      if (core_error == bfd_error_file_ambiguously_recognized)
 {
   list_matching_formats (core_matching);
   free (core_matching);
 }

      status = 1;
    }
}
