
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* base_name (char const*) ;
 char* concat (char const*,char*,char const*) ;
 int strlen (char const*) ;

char *
dir_file_pathname (char const *dir, char const *file)
{
  char const *base = base_name (dir);
  bool omit_slash = !*base || base[strlen (base) - 1] == '/';
  return concat (dir, "/" + omit_slash, file);
}
