
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONSTRAINT_LEN (char,char const*) ;
 int EXTRA_ADDRESS_CONSTRAINT (char,char const*) ;
 int ISDIGIT (char const) ;
 int NO_REGS ;
 int REG_CLASS_FROM_CONSTRAINT (char,char const*) ;

__attribute__((used)) static int
requires_inout (const char *p)
{
  char c;
  int found_zero = 0;
  int reg_allowed = 0;
  int num_matching_alts = 0;
  int len;

  for ( ; (c = *p); p += len)
    {
      len = CONSTRAINT_LEN (c, p);
      switch (c)
 {
 case '=': case '+': case '?':
 case '#': case '&': case '!':
 case '*': case '%':
 case 'm': case '<': case '>': case 'V': case 'o':
 case 'E': case 'F': case 'G': case 'H':
 case 's': case 'i': case 'n':
 case 'I': case 'J': case 'K': case 'L':
 case 'M': case 'N': case 'O': case 'P':
 case 'X':

   break;

 case ',':
   if (found_zero && ! reg_allowed)
     num_matching_alts++;

   found_zero = reg_allowed = 0;
   break;

 case '0':
   found_zero = 1;
   break;

 case '1': case '2': case '3': case '4': case '5':
 case '6': case '7': case '8': case '9':

   do
     p++;
   while (ISDIGIT (*p));
   len = 0;
   break;

 default:
   if (REG_CLASS_FROM_CONSTRAINT (c, p) == NO_REGS
       && !EXTRA_ADDRESS_CONSTRAINT (c, p))
     break;

 case 'p':
 case 'g': case 'r':
   reg_allowed = 1;
   break;
 }
    }

  if (found_zero && ! reg_allowed)
    num_matching_alts++;

  return num_matching_alts;
}
