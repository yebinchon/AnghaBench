
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int assemble_external (int ) ;
 int block_clear_fn ;
 int init_block_clear_fn (int *) ;
 int make_decl_rtl (int ) ;

__attribute__((used)) static tree
clear_storage_libcall_fn (int for_call)
{
  static bool emitted_extern;

  if (!block_clear_fn)
    init_block_clear_fn (((void*)0));

  if (for_call && !emitted_extern)
    {
      emitted_extern = 1;
      make_decl_rtl (block_clear_fn);
      assemble_external (block_clear_fn);
    }

  return block_clear_fn;
}
