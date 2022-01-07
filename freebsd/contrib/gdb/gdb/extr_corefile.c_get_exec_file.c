
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* bfd_get_filename (scalar_t__) ;
 int error (char*) ;
 scalar_t__ exec_bfd ;

char *
get_exec_file (int err)
{
  if (exec_bfd)
    return bfd_get_filename (exec_bfd);
  if (!err)
    return ((void*)0);

  error ("No executable file specified.\nUse the \"file\" or \"exec-file\" command.");

  return ((void*)0);
}
