
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
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static const char *
get_note_type (unsigned e_type)
{
  static char buff[64];

  if (elf_header.e_type == ET_CORE)
    switch (e_type)
      {
      case 142:
 return _("NT_AUXV (auxiliary vector)");
      case 135:
 return _("NT_PRSTATUS (prstatus structure)");
      case 139:
 return _("NT_FPREGSET (floating point registers)");
      case 136:
 return _("NT_PRPSINFO (prpsinfo structure)");
      case 130:
 return _("NT_TASKSTRUCT (task structure)");
      case 134:
 return _("NT_PRXFPREG (user_xfpregs structure)");
      case 132:
 return _("NT_PSTATUS (pstatus structure)");
      case 140:
 return _("NT_FPREGS (floating point registers)");
      case 133:
 return _("NT_PSINFO (psinfo structure)");
      case 137:
 return _("NT_LWPSTATUS (lwpstatus_t structure)");
      case 138:
 return _("NT_LWPSINFO (lwpsinfo_t structure)");
      case 128:
 return _("NT_WIN32PSTATUS (win32_pstatus structure)");
      case 141:
        return _("NT_FILE");
      case 131:
        return _("NT_SIGINFO");
      default:
 break;
      }
  else
    switch (e_type)
      {
      case 129:
 return _("NT_VERSION (version)");
      case 143:
 return _("NT_ARCH (architecture)");
      default:
 break;
      }

  snprintf (buff, sizeof (buff), _("Unknown note type: (0x%08x)"), e_type);
  return buff;
}
