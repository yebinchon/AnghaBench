
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,unsigned long) ;

int
PrintAddr(void *a, void *b)
{
    printf("%lx ", (unsigned long) a);
    return b ? 0 : 0;
}
