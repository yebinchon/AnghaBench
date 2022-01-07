
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* ASM_PREFIX (char const*) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 char* xmalloc (int) ;

__attribute__((used)) static char *
make_label (const char *prefix, const char *name)
{
  int len = strlen (ASM_PREFIX (name)) + strlen (prefix) + strlen (name);
  char *copy = xmalloc (len + 1);

  strcpy (copy, ASM_PREFIX (name));
  strcat (copy, prefix);
  strcat (copy, name);
  return copy;
}
