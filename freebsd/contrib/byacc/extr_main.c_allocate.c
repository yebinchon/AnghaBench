
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* CALLOC (int,size_t) ;
 int NO_SPACE (void*) ;

void *
allocate(size_t n)
{
    void *p;

    p = ((void*)0);
    if (n)
    {
 p = CALLOC(1, n);
 NO_SPACE(p);
    }
    return (p);
}
