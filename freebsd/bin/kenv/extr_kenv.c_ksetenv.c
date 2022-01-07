
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KENV_SET ;
 int kenv (int ,char const*,char*,scalar_t__) ;
 int printf (char*,char const*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
ksetenv(const char *env, char *val)
{
 int ret;

 ret = kenv(KENV_SET, env, val, strlen(val) + 1);
 if (ret == 0)
  printf("%s=\"%s\"\n", env, val);
 return (ret);
}
