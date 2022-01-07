
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int * edge ;
typedef scalar_t__ basic_block ;


 int * find_edge (scalar_t__,scalar_t__) ;
 int gcc_assert (int ) ;
 scalar_t__ label_to_block (int ) ;

__attribute__((used)) static edge
find_taken_edge_computed_goto (basic_block bb, tree val)
{
  basic_block dest;
  edge e = ((void*)0);

  dest = label_to_block (val);
  if (dest)
    {
      e = find_edge (bb, dest);
      gcc_assert (e != ((void*)0));
    }

  return e;
}
