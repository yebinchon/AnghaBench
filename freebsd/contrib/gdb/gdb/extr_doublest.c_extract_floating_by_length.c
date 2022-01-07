
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct floatformat {int dummy; } ;
typedef int DOUBLEST ;


 int NAN ;
 struct floatformat* floatformat_from_length (int) ;
 int floatformat_to_doublest (struct floatformat const*,void const*,int *) ;
 int warning (char*,int) ;

__attribute__((used)) static DOUBLEST
extract_floating_by_length (const void *addr, int len)
{
  const struct floatformat *fmt = floatformat_from_length (len);
  DOUBLEST val;

  if (fmt == ((void*)0))
    {
      warning ("Can't extract a floating-point number of %d bytes.", len);
      return NAN;
    }

  floatformat_to_doublest (fmt, addr, &val);
  return val;
}
