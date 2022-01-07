
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIRST_PSEUDO_REGISTER ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ reg_alloc_order ;
 scalar_t__* reg_alloc_orders ;
 int* regs_ever_live ;

void
order_regs_for_local_alloc (void)
{
  static int last_order_nonleaf = 1;

  if (regs_ever_live[15] != last_order_nonleaf)
    {
      last_order_nonleaf = !last_order_nonleaf;
      memcpy ((char *) reg_alloc_order,
       (const char *) reg_alloc_orders[last_order_nonleaf],
       FIRST_PSEUDO_REGISTER * sizeof (int));
    }
}
