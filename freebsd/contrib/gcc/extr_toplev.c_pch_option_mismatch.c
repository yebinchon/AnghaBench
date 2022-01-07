
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* _ (char*) ;
 int asprintf (char**,char const*,char const*) ;

__attribute__((used)) static const char *
pch_option_mismatch (const char *option)
{
  char *r;

  asprintf (&r, _("created and used with differing settings of '%s'"), option);
  if (r == ((void*)0))
    return _("out of memory");
  return r;
}
