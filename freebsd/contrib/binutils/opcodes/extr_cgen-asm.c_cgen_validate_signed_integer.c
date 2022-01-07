
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 int sprintf (char*,char*,long,long,long) ;

const char *
cgen_validate_signed_integer (long value, long min, long max)
{
  if (value < min || value > max)
    {
      static char buf[100];


      sprintf (buf, _("operand out of range (%ld not between %ld and %ld)"),
        value, min, max);
      return buf;
    }

  return ((void*)0);
}
