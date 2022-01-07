
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;
typedef int bfd ;


 int TRUE ;
 scalar_t__ bfd_core_file_failing_command (int *) ;
 char* bfd_get_filename (int *) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strrchr (char*,char) ;

bfd_boolean
generic_core_file_matches_executable_p (bfd *core_bfd, bfd *exec_bfd)
{
  char *exec;
  char *core;
  char *last_slash;

  if (exec_bfd == ((void*)0) || core_bfd == ((void*)0))
    return TRUE;






  core = (char *) bfd_core_file_failing_command (core_bfd);
  if (core == ((void*)0))
    return TRUE;

  exec = bfd_get_filename (exec_bfd);
  if (exec == ((void*)0))
    return TRUE;

  last_slash = strrchr (core, '/');
  if (last_slash != ((void*)0))
    core = last_slash + 1;

  last_slash = strrchr (exec, '/');
  if (last_slash != ((void*)0))
    exec = last_slash + 1;

  return strcmp (exec, core) == 0;
}
