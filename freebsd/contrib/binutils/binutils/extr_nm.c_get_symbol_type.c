
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int STT_HIOS ;
 unsigned int STT_HIPROC ;
 unsigned int STT_LOOS ;
 unsigned int STT_LOPROC ;




 char* _ (char*) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static const char *
get_symbol_type (unsigned int type)
{
  static char buff [32];

  switch (type)
    {
    case 131: return "NOTYPE";
    case 130: return "OBJECT";
    case 132: return "FUNC";
    case 129: return "SECTION";
    case 133: return "FILE";
    case 134: return "COMMON";
    case 128: return "TLS";
    default:
      if (type >= STT_LOPROC && type <= STT_HIPROC)
 sprintf (buff, _("<processor specific>: %d"), type);
      else if (type >= STT_LOOS && type <= STT_HIOS)
 sprintf (buff, _("<OS specific>: %d"), type);
      else
 sprintf (buff, _("<unknown>: %d"), type);
      return buff;
    }
}
