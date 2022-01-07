
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 int print_width ;
 int printf (char*,...) ;
 scalar_t__ undefined_only ;

__attribute__((used)) static void
print_archive_member_sysv (char *archive, const char *filename)
{
  if (undefined_only)
    printf (_("\n\nUndefined symbols from %s[%s]:\n\n"), archive, filename);
  else
    printf (_("\n\nSymbols from %s[%s]:\n\n"), archive, filename);
  if (print_width == 32)
    printf (_("Name                  Value   Class        Type         Size     Line  Section\n\n"));

  else
    printf (_("Name                  Value           Class        Type         Size             Line  Section\n\n"));

}
