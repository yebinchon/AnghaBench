
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PRE (int ) ;
 char* getenv (char const*) ;

const char *
atf_env_get(const char *name)
{
    const char* val = getenv(name);
    PRE(val != ((void*)0));
    return val;
}
