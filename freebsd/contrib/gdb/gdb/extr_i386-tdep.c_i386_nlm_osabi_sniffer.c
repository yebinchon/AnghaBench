
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gdb_osabi { ____Placeholder_gdb_osabi } gdb_osabi ;
typedef int bfd ;


 int GDB_OSABI_NETWARE ;

__attribute__((used)) static enum gdb_osabi
i386_nlm_osabi_sniffer (bfd *abfd)
{
  return GDB_OSABI_NETWARE;
}
