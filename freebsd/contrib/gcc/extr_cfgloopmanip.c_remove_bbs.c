
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int basic_block ;


 int delete_basic_block (int ) ;
 int remove_bb_from_loops (int ) ;

__attribute__((used)) static void
remove_bbs (basic_block *bbs, int nbbs)
{
  int i;

  for (i = 0; i < nbbs; i++)
    {
      remove_bb_from_loops (bbs[i]);
      delete_basic_block (bbs[i]);
    }
}
