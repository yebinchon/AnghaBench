
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int slob_t ;


 unsigned long PAGE_MASK ;
 scalar_t__ slob_next (int *) ;

__attribute__((used)) static int slob_last(slob_t *s)
{
 return !((unsigned long)slob_next(s) & ~PAGE_MASK);
}
