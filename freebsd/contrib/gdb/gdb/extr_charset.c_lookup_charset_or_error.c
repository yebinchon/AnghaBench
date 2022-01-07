
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct charset {int dummy; } ;


 int error (char*,char const*) ;
 struct charset* lookup_charset (char const*) ;

__attribute__((used)) static struct charset *
lookup_charset_or_error (const char *name)
{
  struct charset *cs = lookup_charset (name);

  if (! cs)
    error ("GDB doesn't know of any character set named `%s'.", name);

  return cs;
}
