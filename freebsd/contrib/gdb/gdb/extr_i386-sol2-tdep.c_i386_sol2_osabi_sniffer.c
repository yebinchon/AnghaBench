
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gdb_osabi { ____Placeholder_gdb_osabi } gdb_osabi ;
typedef int bfd ;


 int GDB_OSABI_SOLARIS ;
 int GDB_OSABI_UNKNOWN ;
 scalar_t__ bfd_get_section_by_name (int *,char*) ;

__attribute__((used)) static enum gdb_osabi
i386_sol2_osabi_sniffer (bfd *abfd)
{


  if (bfd_get_section_by_name (abfd, ".SUNW_version"))
    return GDB_OSABI_SOLARIS;

  return GDB_OSABI_UNKNOWN;
}
