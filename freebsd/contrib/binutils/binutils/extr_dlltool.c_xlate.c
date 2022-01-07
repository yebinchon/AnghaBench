
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ add_stdcall_underscore ;
 scalar_t__ add_underscore ;
 scalar_t__ killat ;
 char* strchr (char const*,char) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 char* xmalloc (scalar_t__) ;

__attribute__((used)) static const char *
xlate (const char *name)
{
  int lead_at = (*name == '@');

  if (!lead_at && (add_underscore
     || (add_stdcall_underscore
         && strchr (name, '@'))))
    {
      char *copy = xmalloc (strlen (name) + 2);

      copy[0] = '_';
      strcpy (copy + 1, name);
      name = copy;
    }

  if (killat)
    {
      char *p;

      name += lead_at;
      p = strchr (name, '@');
      if (p)
 *p = 0;
    }
  return name;
}
