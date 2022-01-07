
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buff ;



 unsigned int STB_HIOS ;
 unsigned int STB_HIPROC ;

 unsigned int STB_LOOS ;
 unsigned int STB_LOPROC ;

 char* _ (char*) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static const char *
get_symbol_binding (unsigned int binding)
{
  static char buff[32];

  switch (binding)
    {
    case 129: return "LOCAL";
    case 130: return "GLOBAL";
    case 128: return "WEAK";
    default:
      if (binding >= STB_LOPROC && binding <= STB_HIPROC)
 snprintf (buff, sizeof (buff), _("<processor specific>: %d"),
    binding);
      else if (binding >= STB_LOOS && binding <= STB_HIOS)
 snprintf (buff, sizeof (buff), _("<OS specific>: %d"), binding);
      else
 snprintf (buff, sizeof (buff), _("<unknown>: %d"), binding);
      return buff;
    }
}
