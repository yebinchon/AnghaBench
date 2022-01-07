
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum gdb_osabi { ____Placeholder_gdb_osabi } gdb_osabi ;
typedef int bfd ;
struct TYPE_2__ {unsigned int* e_ident; } ;


 size_t EI_OSABI ;







 int GDB_OSABI_FREEBSD_ELF ;
 int GDB_OSABI_HPUX_ELF ;
 int GDB_OSABI_HURD ;
 int GDB_OSABI_LINUX ;
 int GDB_OSABI_NETBSD_ELF ;
 int GDB_OSABI_SOLARIS ;
 int GDB_OSABI_UNKNOWN ;
 int bfd_map_over_sections (int *,int ,int*) ;
 TYPE_1__* elf_elfheader (int *) ;
 int generic_elf_osabi_sniff_abi_tag_sections ;
 scalar_t__ strcmp (unsigned int*,char*) ;

__attribute__((used)) static enum gdb_osabi
generic_elf_osabi_sniffer (bfd *abfd)
{
  unsigned int elfosabi;
  enum gdb_osabi osabi = GDB_OSABI_UNKNOWN;

  elfosabi = elf_elfheader (abfd)->e_ident[EI_OSABI];

  switch (elfosabi)
    {
    case 129:




      bfd_map_over_sections (abfd,
        generic_elf_osabi_sniff_abi_tag_sections,
        &osabi);
      break;

    case 134:
      osabi = GDB_OSABI_FREEBSD_ELF;
      break;

    case 130:
      osabi = GDB_OSABI_NETBSD_ELF;
      break;

    case 131:
      osabi = GDB_OSABI_LINUX;
      break;

    case 132:
      osabi = GDB_OSABI_HURD;
      break;

    case 128:
      osabi = GDB_OSABI_SOLARIS;
      break;

    case 133:
      osabi = GDB_OSABI_HPUX_ELF;
      break;
    }

  if (osabi == GDB_OSABI_UNKNOWN)
    {



      if (strcmp (&elf_elfheader (abfd)->e_ident[8], "FreeBSD") == 0)
 osabi = GDB_OSABI_FREEBSD_ELF;
    }

  return osabi;
}
