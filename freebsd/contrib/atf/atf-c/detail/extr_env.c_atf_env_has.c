
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * getenv (char const*) ;

bool
atf_env_has(const char *name)
{
    return getenv(name) != ((void*)0);
}
