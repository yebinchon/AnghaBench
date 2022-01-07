
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ basic_block ;


 int CDI_POST_DOMINATORS ;
 scalar_t__ ENTRY_BLOCK_PTR ;
 scalar_t__ EXIT_BLOCK_PTR ;
 int gcc_assert (int) ;
 scalar_t__ get_immediate_dominator (int ,scalar_t__) ;

__attribute__((used)) static inline basic_block
find_pdom (basic_block block)
{
  gcc_assert (block != ENTRY_BLOCK_PTR);

  if (block == EXIT_BLOCK_PTR)
    return EXIT_BLOCK_PTR;
  else
    {
      basic_block bb = get_immediate_dominator (CDI_POST_DOMINATORS, block);
      if (! bb)
 return EXIT_BLOCK_PTR;
      return bb;
    }
}
