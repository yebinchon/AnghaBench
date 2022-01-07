
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ebt_table_info {struct ebt_entries** hook_entry; } ;
struct ebt_entry {scalar_t__ bitmask; } ;
struct ebt_entries {int dummy; } ;
struct TYPE_2__ {scalar_t__ n; struct ebt_entries* chaininfo; } ;
struct ebt_cl_stack {scalar_t__ hookmask; TYPE_1__ cs; } ;


 int NF_BR_NUMHOOKS ;

__attribute__((used)) static inline int
ebt_get_udc_positions(struct ebt_entry *e, struct ebt_table_info *newinfo,
   unsigned int *n, struct ebt_cl_stack *udc)
{
 int i;


 if (e->bitmask)
  return 0;
 for (i = 0; i < NF_BR_NUMHOOKS; i++) {
  if (newinfo->hook_entry[i] == (struct ebt_entries *)e)
   break;
 }

 if (i != NF_BR_NUMHOOKS)
  return 0;

 udc[*n].cs.chaininfo = (struct ebt_entries *)e;

 udc[*n].cs.n = 0;
 udc[*n].hookmask = 0;

 (*n)++;
 return 0;
}
