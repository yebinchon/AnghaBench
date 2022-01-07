
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int to_sections_end; int to_sections; } ;


 int DEPRECATED_HPUX_TEXT_END (TYPE_1__*) ;
 int O_BINARY ;
 int O_RDONLY ;
 int O_RDWR ;
 char* alloca (scalar_t__) ;
 int bfd_check_format (int ,int ) ;
 char* bfd_errmsg (int ) ;
 int bfd_fdopenr (char*,int ,int) ;
 int bfd_get_error () ;
 int bfd_object ;
 scalar_t__ build_section_table (int ,int *,int *) ;
 int error (char*,char*,char*) ;
 int exec_bfd ;
 int exec_close (int ) ;
 int exec_file_display_hook (char*) ;
 TYPE_1__ exec_ops ;
 int getenv (char*) ;
 int gnutarget ;
 int make_cleanup (int ,char*) ;
 int map_vmap (int ,int ) ;
 int openp (int ,int,char*,int,int ,char**) ;
 int perror_with_name (char*) ;
 int printf_unfiltered (char*) ;
 int push_target (TYPE_1__*) ;
 int set_gdbarch_from_file (int ) ;
 int strcat (int ,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int stub1 (char*) ;
 int unpush_target (TYPE_1__*) ;
 int validate_files () ;
 int * vmap ;
 scalar_t__ write_files ;
 int xfree ;
 char* xstrdup (char*) ;

void
exec_file_attach (char *filename, int from_tty)
{

  unpush_target (&exec_ops);



  if (!filename)
    {
      if (from_tty)
        printf_unfiltered ("No executable file now.\n");
    }
  else
    {
      char *scratch_pathname;
      int scratch_chan;

      scratch_chan = openp (getenv ("PATH"), 1, filename,
     write_files ? O_RDWR | O_BINARY : O_RDONLY | O_BINARY, 0,
       &scratch_pathname);
      if (scratch_chan < 0)
 perror_with_name (filename);
      exec_bfd = bfd_fdopenr (scratch_pathname, gnutarget, scratch_chan);

      if (!exec_bfd)
 error ("\"%s\": could not open as an executable file: %s",
        scratch_pathname, bfd_errmsg (bfd_get_error ()));





      scratch_pathname = xstrdup (scratch_pathname);
      make_cleanup (xfree, scratch_pathname);

      if (!bfd_check_format (exec_bfd, bfd_object))
 {


   exec_close (0);
   error ("\"%s\": not in executable format: %s",
   scratch_pathname, bfd_errmsg (bfd_get_error ()));
 }
      if (build_section_table (exec_bfd, &exec_ops.to_sections,
          &exec_ops.to_sections_end))
 {


   exec_close (0);
   error ("\"%s\": can't find the file sections: %s",
   scratch_pathname, bfd_errmsg (bfd_get_error ()));
 }





      validate_files ();

      set_gdbarch_from_file (exec_bfd);

      push_target (&exec_ops);


      if (exec_file_display_hook)
 (*exec_file_display_hook) (filename);
    }
}
