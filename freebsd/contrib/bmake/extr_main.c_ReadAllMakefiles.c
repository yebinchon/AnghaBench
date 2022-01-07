
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ReadMakefile (void const*,void const*) ;

__attribute__((used)) static int
ReadAllMakefiles(const void *p, const void *q)
{
 return (ReadMakefile(p, q) == 0);
}
