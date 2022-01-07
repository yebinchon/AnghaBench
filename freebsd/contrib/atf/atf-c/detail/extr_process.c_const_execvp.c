
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNCONST (char const* const*) ;
 int execvp (char const*,int ) ;

__attribute__((used)) static
int
const_execvp(const char *file, const char *const *argv)
{

    return execvp(file, ((void *)(unsigned long)(const void *)(argv)));

}
