
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct avtab {scalar_t__ nel; int * htable; } ;



int avtab_init(struct avtab *h)
{
 h->htable = ((void*)0);
 h->nel = 0;
 return 0;
}
