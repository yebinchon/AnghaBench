
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __assert (char const*,char const*,int) ;

int
assfail(const char *astring, const char *file, int line)
{
 __assert(astring, file, line);

 return (0);
}
