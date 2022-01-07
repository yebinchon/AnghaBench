
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int slobidx_t ;
struct TYPE_4__ {int units; } ;
typedef TYPE_1__ slob_t ;


 unsigned long PAGE_MASK ;

__attribute__((used)) static slob_t *slob_next(slob_t *s)
{
 slob_t *base = (slob_t *)((unsigned long)s & PAGE_MASK);
 slobidx_t next;

 if (s[0].units < 0)
  next = -s[0].units;
 else
  next = s[1].units;
 return base+next;
}
