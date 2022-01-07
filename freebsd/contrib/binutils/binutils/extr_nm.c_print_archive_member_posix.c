
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int filename_per_symbol ;
 int printf (char*,char*,char const*) ;

__attribute__((used)) static void
print_archive_member_posix (char *archive, const char *filename)
{
  if (!filename_per_symbol)
    printf ("%s[%s]:\n", archive, filename);
}
