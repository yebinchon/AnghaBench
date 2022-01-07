
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;
typedef int bfd ;
typedef int asection ;


 int PIDGET (int ) ;
 int SEC_ALLOC ;
 int SEC_HAS_CONTENTS ;
 int SEC_READONLY ;
 int bfd_core ;
 int bfd_errmsg (int ) ;
 int bfd_get_error () ;
 int * bfd_make_section_anyway (int *,char*) ;
 int * bfd_openw (char*,int ) ;
 int bfd_set_arch_mach (int *,int ,int ) ;
 int bfd_set_format (int *,int ) ;
 int bfd_set_section_alignment (int *,int *,int ) ;
 int bfd_set_section_contents (int *,int *,void*,int ,int) ;
 int bfd_set_section_flags (int *,int *,int) ;
 int bfd_set_section_size (int *,int *,int) ;
 int bfd_set_section_vma (int *,int *,int ) ;
 int default_gcore_arch () ;
 int default_gcore_mach () ;
 int default_gcore_target () ;
 int do_cleanups (struct cleanup*) ;
 int error (char*,...) ;
 int fprintf_filtered (int ,char*,char*) ;
 scalar_t__ gcore_memory_sections (int *) ;
 int gdb_stdout ;
 int inferior_ptid ;
 scalar_t__ info_verbose ;
 struct cleanup* make_cleanup_bfd_close (int *) ;
 int noprocess () ;
 int sprintf (char*,char*,int) ;
 int target_has_execution ;
 void* target_make_corefile_notes (int *,int*) ;
 int warning (char*,int ) ;

__attribute__((used)) static void
gcore_command (char *args, int from_tty)
{
  struct cleanup *old_chain;
  char *corefilename, corefilename_buffer[40];
  asection *note_sec = ((void*)0);
  bfd *obfd;
  void *note_data = ((void*)0);
  int note_size = 0;


  if (!target_has_execution)
    noprocess ();

  if (args && *args)
    corefilename = args;
  else
    {

      sprintf (corefilename_buffer, "core.%d", PIDGET (inferior_ptid));
      corefilename = corefilename_buffer;
    }

  if (info_verbose)
    fprintf_filtered (gdb_stdout,
        "Opening corefile '%s' for output.\n", corefilename);


  obfd = bfd_openw (corefilename, default_gcore_target ());
  if (!obfd)
    error ("Failed to open '%s' for output.", corefilename);


  old_chain = make_cleanup_bfd_close (obfd);

  bfd_set_format (obfd, bfd_core);
  bfd_set_arch_mach (obfd, default_gcore_arch (), default_gcore_mach ());


  note_data = target_make_corefile_notes (obfd, &note_size);


  if (note_data != ((void*)0) && note_size != 0)
    {
      note_sec = bfd_make_section_anyway (obfd, "note0");
      if (note_sec == ((void*)0))
 error ("Failed to create 'note' section for corefile: %s",
        bfd_errmsg (bfd_get_error ()));

      bfd_set_section_vma (obfd, note_sec, 0);
      bfd_set_section_flags (obfd, note_sec,
        SEC_HAS_CONTENTS | SEC_READONLY | SEC_ALLOC);
      bfd_set_section_alignment (obfd, note_sec, 0);
      bfd_set_section_size (obfd, note_sec, note_size);
    }


  if (gcore_memory_sections (obfd) == 0)
    error ("gcore: failed to get corefile memory sections from target.");


  if (note_data != ((void*)0) && note_size != 0)
    {
      if (!bfd_set_section_contents (obfd, note_sec, note_data, 0, note_size))
 warning ("writing note section (%s)", bfd_errmsg (bfd_get_error ()));
    }


  fprintf_filtered (gdb_stdout, "Saved corefile %s\n", corefilename);


  do_cleanups (old_chain);
  return;
}
