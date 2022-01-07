
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buff ;





 unsigned int ET_HIOS ;
 unsigned int ET_HIPROC ;
 unsigned int ET_LOOS ;
 unsigned int ET_LOPROC ;


 char* _ (char*) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static char *
get_file_type (unsigned e_type)
{
  static char buff[32];

  switch (e_type)
    {
    case 129: return _("NONE (None)");
    case 128: return _("REL (Relocatable file)");
    case 130: return _("EXEC (Executable file)");
    case 131: return _("DYN (Shared object file)");
    case 132: return _("CORE (Core file)");

    default:
      if ((e_type >= ET_LOPROC) && (e_type <= ET_HIPROC))
 snprintf (buff, sizeof (buff), _("Processor Specific: (%x)"), e_type);
      else if ((e_type >= ET_LOOS) && (e_type <= ET_HIOS))
 snprintf (buff, sizeof (buff), _("OS Specific: (%x)"), e_type);
      else
 snprintf (buff, sizeof (buff), _("<unknown>: %x"), e_type);
      return buff;
    }
}
