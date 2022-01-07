
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ alloca (int) ;
 int* call_used_regs ;
 int decode_reg_name (char*) ;
 int* fixed_regs ;
 int memcpy (char*,char const*,int) ;
 char* strchr (char*,char) ;
 int strlen (char const*) ;
 int warning (int ,char*,...) ;

__attribute__((used)) static void
fix_range (const char *const_str)
{
  int i, first, last;
  char *str, *dash, *comma;







  i = strlen (const_str);
  str = (char *) alloca (i + 1);
  memcpy (str, const_str, i + 1);

  while (1)
    {
      dash = strchr (str, '-');
      if (!dash)
 {
   warning (0, "value of -mfixed-range must have form REG1-REG2");
   return;
 }
      *dash = '\0';

      comma = strchr (dash + 1, ',');
      if (comma)
 *comma = '\0';

      first = decode_reg_name (str);
      if (first < 0)
 {
   warning (0, "unknown register name: %s", str);
   return;
 }

      last = decode_reg_name (dash + 1);
      if (last < 0)
 {
   warning (0, "unknown register name: %s", dash + 1);
   return;
 }

      *dash = '-';

      if (first > last)
 {
   warning (0, "%s-%s is an empty range", str, dash + 1);
   return;
 }

      for (i = first; i <= last; ++i)
 fixed_regs[i] = call_used_regs[i] = 1;

      if (!comma)
 break;

      *comma = ',';
      str = comma + 1;
    }
}
