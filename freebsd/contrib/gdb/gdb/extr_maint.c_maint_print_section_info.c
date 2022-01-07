
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int flagword ;
typedef int CORE_ADDR ;


 int local_hex_string_custom (unsigned long,char*) ;
 int paddr (int ) ;
 int print_bfd_flags (int ) ;
 int printf_filtered (char*,...) ;

__attribute__((used)) static void
maint_print_section_info (const char *name, flagword flags,
     CORE_ADDR addr, CORE_ADDR endaddr,
     unsigned long filepos)
{

  printf_filtered ("    0x%s", paddr (addr));
  printf_filtered ("->0x%s", paddr (endaddr));
  printf_filtered (" at %s",
     local_hex_string_custom ((unsigned long) filepos, "08l"));
  printf_filtered (": %s", name);
  print_bfd_flags (flags);
  printf_filtered ("\n");
}
