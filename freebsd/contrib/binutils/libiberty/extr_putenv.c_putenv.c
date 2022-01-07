
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ alloca (int) ;
 int memcpy (char*,char const*,int) ;
 int setenv (char*,char const* const,int) ;
 char* strchr (char const*,char) ;
 int unsetenv (char const*) ;

int
putenv (const char *string)
{
  const char *const name_end = strchr (string, '=');

  if (name_end)
    {
      char *name = (char *) alloca (name_end - string + 1);
      memcpy (name, string, name_end - string);
      name[name_end - string] = '\0';
      return setenv (name, name_end + 1, 1);
    }

  unsetenv (string);
  return 0;
}
