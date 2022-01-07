
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AFLAG ;
 int PREFIX_ADDR ;
 scalar_t__ address_mode ;
 int close_char ;
 int eAX_reg ;
 scalar_t__ mode_64bit ;
 char** names16 ;
 char** names32 ;
 char** names64 ;
 int oappend (char const*) ;
 scalar_t__* obufp ;
 int open_char ;
 int prefixes ;
 int used_prefixes ;

__attribute__((used)) static void
ptr_reg (int code, int sizeflag)
{
  const char *s;

  *obufp++ = open_char;
  used_prefixes |= (prefixes & PREFIX_ADDR);
  if (address_mode == mode_64bit)
    {
      if (!(sizeflag & AFLAG))
 s = names32[code - eAX_reg];
      else
 s = names64[code - eAX_reg];
    }
  else if (sizeflag & AFLAG)
    s = names32[code - eAX_reg];
  else
    s = names16[code - eAX_reg];
  oappend (s);
  *obufp++ = close_char;
  *obufp = 0;
}
