
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ bfd_get_mtime (scalar_t__) ;
 scalar_t__ core_bfd ;
 int core_file_matches_executable_p (scalar_t__,scalar_t__) ;
 scalar_t__ exec_bfd ;
 int warning (char*) ;

void
validate_files (void)
{
  if (exec_bfd && core_bfd)
    {
      if (!core_file_matches_executable_p (core_bfd, exec_bfd))
 warning ("core file may not match specified executable file.");
      else if (bfd_get_mtime (exec_bfd) > bfd_get_mtime (core_bfd))
 warning ("exec file is newer than core file.");
    }
}
