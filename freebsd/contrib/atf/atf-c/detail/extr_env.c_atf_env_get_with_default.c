
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char const*) ;

const char *
atf_env_get_with_default(const char *name, const char *default_value)
{
    const char* val = getenv(name);
    if (val == ((void*)0))
        return default_value;
    else
        return val;
}
