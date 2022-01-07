
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 int get_file_size (char const*) ;
 int * open_inarch (char const*,char*) ;
 int write_archive (int *) ;
 int write_armap ;
 int xexit (int) ;

__attribute__((used)) static int
ranlib_only (const char *archname)
{
  bfd *arch;

  if (get_file_size (archname) < 1)
    return 1;
  write_armap = 1;
  arch = open_inarch (archname, (char *) ((void*)0));
  if (arch == ((void*)0))
    xexit (1);
  write_archive (arch);
  return 0;
}
