
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buff ;
struct TYPE_2__ {scalar_t__ e_type; } ;


 scalar_t__ ET_CORE ;
 char* _ (char*) ;
 TYPE_1__ elf_header ;
 char const* get_note_type (unsigned int) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static const char *
get_freebsd_note_type (unsigned e_type)
{
  static char buff[64];

  if (elf_header.e_type == ET_CORE)
    switch (e_type)
      {
      case 129:
 return _("NT_THRMISC (thrmisc structure)");
      case 134:
 return _("NT_PROCSTAT_PROC (proc data)");
      case 137:
 return _("NT_PROCSTAT_FILES (files data)");
      case 130:
 return _("NT_PROCSTAT_VMMAP (vmmap data)");
      case 136:
 return _("NT_PROCSTAT_GROUPS (groups data)");
      case 131:
 return _("NT_PROCSTAT_UMASK (umask data)");
      case 132:
 return _("NT_PROCSTAT_RLIMIT (rlimit data)");
      case 135:
 return _("NT_PROCSTAT_OSREL (osreldate data)");
      case 133:
 return _("NT_PROCSTAT_PSSTRINGS (ps_strings data)");
      case 138:
 return _("NT_PROCSTAT_AUXV (auxv data)");
      case 128:
 return _("NT_X86_XSTATE (x86 XSAVE extended state)");
      default:
 return get_note_type(e_type);
      }
  else
    switch (e_type)
      {
      case 141:
 return _("NT_FREEBSD_ABI_TAG");
      case 139:
 return _("NT_FREEBSD_NOINIT_TAG");
      case 140:
 return _("NT_FREEBSD_ARCH_TAG");
      default:
 break;
      }

  snprintf (buff, sizeof(buff), _("Unknown note type: (0x%08x)"), e_type);
  return buff;
}
