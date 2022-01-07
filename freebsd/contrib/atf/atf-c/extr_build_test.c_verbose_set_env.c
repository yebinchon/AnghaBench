
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RE (int ) ;
 int atf_env_set (char const*,char const*) ;
 int printf (char*,char const*,char const*) ;

__attribute__((used)) static
void
verbose_set_env(const char *var, const char *val)
{
    printf("Setting %s to '%s'\n", var, val);
    RE(atf_env_set(var, val));
}
