
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ filename_per_file ;
 int printf (char*,char*) ;

__attribute__((used)) static void
print_archive_filename_bsd (char *filename)
{
  if (filename_per_file)
    printf ("\n%s:\n", filename);
}
