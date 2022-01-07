
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int KENV_GET ;
 int kenv (int ,char const*,char*,int) ;
 int printf (char*,char const*,...) ;
 scalar_t__ vflag ;

__attribute__((used)) static int
kgetenv(const char *env)
{
 char buf[1024];
 int ret;

 ret = kenv(KENV_GET, env, buf, sizeof(buf));
 if (ret == -1)
  return (ret);
 if (vflag)
  printf("%s=\"%s\"\n", env, buf);
 else
  printf("%s\n", buf);
 return (0);
}
