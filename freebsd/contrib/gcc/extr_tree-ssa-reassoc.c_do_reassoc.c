
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENTRY_BLOCK_PTR ;
 int EXIT_BLOCK_PTR ;
 int break_up_subtract_bb (int ) ;
 int reassociate_bb (int ) ;

__attribute__((used)) static void
do_reassoc (void)
{
  break_up_subtract_bb (ENTRY_BLOCK_PTR);
  reassociate_bb (EXIT_BLOCK_PTR);
}
