
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISUPPER (char) ;
 scalar_t__ alloca (size_t) ;
 int cpp_define (int ,char const*) ;
 int flag_iso ;
 int memcpy (char*,char const*,size_t) ;
 int parse_in ;
 size_t strlen (char const*) ;

void
builtin_define_std (const char *macro)
{
  size_t len = strlen (macro);
  char *buff = (char *) alloca (len + 5);
  char *p = buff + 2;
  char *q = p + len;


  memcpy (p, macro, len + 1);
  if (!( *p == '_' && (p[1] == '_' || ISUPPER (p[1]))))
    {
      if (*p != '_')
 *--p = '_';
      if (p[1] != '_')
 *--p = '_';
    }
  cpp_define (parse_in, p);


  if (p != buff + 2)
    {

      if (q[-1] != '_')
 *q++ = '_';
      if (q[-2] != '_')
 *q++ = '_';
      *q = '\0';
      cpp_define (parse_in, p);


      if (!flag_iso)
 cpp_define (parse_in, macro);
    }
}
