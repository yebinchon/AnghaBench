
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONGEST ;


 int DEPRECATED_REGISTER_RAW_SIZE (int) ;
 int MAX_REGISTER_SIZE ;
 int error (char*,int,char*) ;
 scalar_t__ fromhex (int ) ;
 scalar_t__ isspace (char) ;
 int isxdigit (char) ;
 int monitor_debug (char*,int,char*) ;
 int store_unsigned_integer (unsigned char*,int ,int) ;
 int supply_register (int,unsigned char*) ;

char *
monitor_supply_register (int regno, char *valstr)
{
  ULONGEST val;
  unsigned char regbuf[MAX_REGISTER_SIZE];
  char *p;

  val = 0;
  p = valstr;
  while (p && *p != '\0')
    {
      if (*p == '\r' || *p == '\n')
        {
          while (*p != '\0')
              p++;
          break;
        }
      if (isspace (*p))
        {
          p++;
          continue;
        }
      if (!isxdigit (*p) && *p != 'x')
        {
          break;
        }

      val <<= 4;
      val += fromhex (*p++);
    }
  monitor_debug ("Supplying Register %d %s\n", regno, valstr);

  if (val == 0 && valstr == p)
    error ("monitor_supply_register (%d):  bad value from monitor: %s.",
    regno, valstr);



  store_unsigned_integer (regbuf, DEPRECATED_REGISTER_RAW_SIZE (regno), val);

  supply_register (regno, regbuf);

  return p;
}
