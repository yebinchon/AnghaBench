
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KENV_UNSET ;
 int kenv (int ,char const*,int *,int ) ;

__attribute__((used)) static int
kunsetenv(const char *env)
{
 int ret;

 ret = kenv(KENV_UNSET, env, ((void*)0), 0);
 return (ret);
}
