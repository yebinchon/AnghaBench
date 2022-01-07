
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DECL_INITIAL (int ) ;
 int current_function_decl ;
 int mark_blocks_with_used_vars (int ) ;

__attribute__((used)) static unsigned int
mark_used_blocks (void)
{
  mark_blocks_with_used_vars (DECL_INITIAL (current_function_decl));
  return 0;
}
