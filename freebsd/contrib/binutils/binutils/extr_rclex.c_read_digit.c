
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rc_uint_type ;


 scalar_t__ ISDIGIT (int) ;
 int rclex_peekch () ;
 int rclex_readch () ;
 int rcparse_warning (char*) ;

__attribute__((used)) static rc_uint_type
read_digit (int ch)
{
  rc_uint_type base = 10;
  rc_uint_type ret, val;
  int warned = 0;

  ret = 0;
  if (ch == '0')
    {
      base = 8;
      switch (rclex_peekch ())
 {
 case 'o': case 'O':
   rclex_readch ();
   base = 8;
   break;

 case 'x': case 'X':
   rclex_readch ();
   base = 16;
   break;
 }
    }
  else
    ret = (rc_uint_type) (ch - '0');
  while ((ch = rclex_peekch ()) != -1)
    {
      if (ISDIGIT (ch))
 val = (rc_uint_type) (ch - '0');
      else if (ch >= 'a' && ch <= 'f')
 val = (rc_uint_type) ((ch - 'a') + 10);
      else if (ch >= 'A' && ch <= 'F')
 val = (rc_uint_type) ((ch - 'A') + 10);
      else
 break;
      rclex_readch ();
      if (! warned && val >= base)
 {
   warned = 1;
   rcparse_warning ("digit exceeds base");
 }
      ret *= base;
      ret += val;
    }
  return ret;
}
