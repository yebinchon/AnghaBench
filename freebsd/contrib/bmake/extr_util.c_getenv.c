
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* findenv (char const*,int*) ;

char *
getenv(const char *name)
{
    int offset;

    return(findenv(name, &offset));
}
