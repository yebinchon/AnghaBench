
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ errno ;
 char* getenv (char const*) ;
 int gomp_error (char*,char const*) ;
 scalar_t__ isspace (unsigned char) ;
 unsigned long strtoul (char*,char**,int) ;

__attribute__((used)) static bool
parse_unsigned_long (const char *name, unsigned long *pvalue)
{
  char *env, *end;
  unsigned long value;

  env = getenv (name);
  if (env == ((void*)0))
    return 0;

  while (isspace ((unsigned char) *env))
    ++env;
  if (*env == '\0')
    goto invalid;

  errno = 0;
  value = strtoul (env, &end, 10);
  if (errno || (long) value <= 0)
    goto invalid;

  while (isspace ((unsigned char) *end))
    ++end;
  if (*end != '\0')
    goto invalid;

  *pvalue = value;
  return 1;

 invalid:
  gomp_error ("Invalid value for environment variable %s", name);
  return 0;
}
