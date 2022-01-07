
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int *** page_table ;
typedef int page_entry ;
struct TYPE_4__ {int *** lookup; } ;
struct TYPE_3__ {size_t high_bits; int *** table; int *** next; } ;


 TYPE_2__ G ;
 size_t LOOKUP_L1 (void const*) ;
 size_t LOOKUP_L2 (void const*) ;

__attribute__((used)) static inline int
ggc_allocated_p (const void *p)
{
  page_entry ***base;
  size_t L1, L2;


  base = &G.lookup[0];
  L1 = LOOKUP_L1 (p);
  L2 = LOOKUP_L2 (p);

  return base[L1] && base[L1][L2];
}
