
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buff ;



 char* _ (char*) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static const char *
get_group_flags (unsigned int flags)
{
  static char buff[32];
  switch (flags)
    {
    case 128:
      return "COMDAT";

   default:
      snprintf (buff, sizeof (buff), _("[<unknown>: 0x%x]"), flags);
      break;
    }
  return buff;
}
