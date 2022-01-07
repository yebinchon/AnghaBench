
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 int sprintf (char*,char*,unsigned long,unsigned long,unsigned long) ;

const char *
cgen_validate_unsigned_integer (unsigned long value,
    unsigned long min,
    unsigned long max)
{
  if (value < min || value > max)
    {
      static char buf[100];


      sprintf (buf, _("operand out of range (%lu not between %lu and %lu)"),
        value, min, max);
      return buf;
    }

  return ((void*)0);
}
