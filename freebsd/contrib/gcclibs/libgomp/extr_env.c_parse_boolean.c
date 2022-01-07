
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char const*) ;
 int gomp_error (char*,char const*) ;
 scalar_t__ isspace (unsigned char) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;

__attribute__((used)) static void
parse_boolean (const char *name, bool *value)
{
  const char *env;

  env = getenv (name);
  if (env == ((void*)0))
    return;

  while (isspace ((unsigned char) *env))
    ++env;
  if (strncasecmp (env, "true", 4) == 0)
    {
      *value = 1;
      env += 4;
    }
  else if (strncasecmp (env, "false", 5) == 0)
    {
      *value = 0;
      env += 5;
    }
  else
    env = "X";
  while (isspace ((unsigned char) *env))
    ++env;
  if (*env != '\0')
    gomp_error ("Invalid value for environment variable %s", name);
}
