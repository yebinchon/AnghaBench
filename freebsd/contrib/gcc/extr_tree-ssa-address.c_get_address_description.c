
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct mem_address {int offset; int step; int index; int base; int symbol; } ;


 int TMR_BASE (int ) ;
 int TMR_INDEX (int ) ;
 int TMR_OFFSET (int ) ;
 int TMR_STEP (int ) ;
 int TMR_SYMBOL (int ) ;

void
get_address_description (tree op, struct mem_address *addr)
{
  addr->symbol = TMR_SYMBOL (op);
  addr->base = TMR_BASE (op);
  addr->index = TMR_INDEX (op);
  addr->step = TMR_STEP (op);
  addr->offset = TMR_OFFSET (op);
}
