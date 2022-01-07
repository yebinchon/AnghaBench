
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 char* find_separate_debug_file (int *,char const*) ;

char *
bfd_follow_gnu_debuglink (bfd *abfd, const char *dir)
{
  return find_separate_debug_file (abfd, dir);
}
