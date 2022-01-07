
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buff ;
 char* _ (char*) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static const char *
get_osabi_name (unsigned int osabi)
{
  static char buff[32];

  switch (osabi)
    {
    case 134: return "UNIX - System V";
    case 140: return "UNIX - HP-UX";
    case 135: return "UNIX - NetBSD";
    case 137: return "UNIX - Linux";
    case 139: return "GNU/Hurd";
    case 130: return "UNIX - Solaris";
    case 144: return "UNIX - AIX";
    case 138: return "UNIX - IRIX";
    case 141: return "UNIX - FreeBSD";
    case 128: return "UNIX - TRU64";
    case 136: return "Novell - Modesto";
    case 132: return "UNIX - OpenBSD";
    case 131: return "VMS - OpenVMS";
    case 133: return "HP - Non-Stop Kernel";
    case 142: return "Amiga Research OS";
    case 129: return _("Standalone App");
    case 143: return "ARM";
    default:
      snprintf (buff, sizeof (buff), _("<unknown: %x>"), osabi);
      return buff;
    }
}
