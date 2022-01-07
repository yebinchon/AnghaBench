
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ filename_per_file ;
 int filename_per_symbol ;
 int printf (char*,char*) ;

__attribute__((used)) static void
print_object_filename_posix (char *filename)
{
  if (filename_per_file && !filename_per_symbol)
    printf ("%s:\n", filename);
}
