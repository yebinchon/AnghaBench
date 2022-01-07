
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
 size_t LOOKUP_L1 (void*) ;
 size_t LOOKUP_L2 (void*) ;
 int PAGE_L2_SIZE ;
 void* xcalloc (int,int) ;

__attribute__((used)) static void
set_page_table_entry (void *p, page_entry *entry)
{
  page_entry ***base;
  size_t L1, L2;


  base = &G.lookup[0];
  L1 = LOOKUP_L1 (p);
  L2 = LOOKUP_L2 (p);

  if (base[L1] == ((void*)0))
    base[L1] = xcalloc (PAGE_L2_SIZE, sizeof (page_entry *));

  base[L1][L2] = entry;
}
