
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DECL_INITIAL (int ) ;
 int current_function_decl ;
 int record_block_change (int ) ;

void
finalize_block_changes (void)
{
  record_block_change (DECL_INITIAL (current_function_decl));
}
