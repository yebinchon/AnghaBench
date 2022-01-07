
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ ARRAY_TYPE ;
 scalar_t__ BLOCK_POINTER_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_MAIN_VARIANT (int ) ;
 int comptypes (int ,int ) ;
 scalar_t__ pedantic ;
 int pedwarn (char*) ;
 int types_are_block_compatible (int ,int ) ;

__attribute__((used)) static int
comp_target_types (tree ttl, tree ttr)
{
  int val;
  tree mvl, mvr;


  if (TREE_CODE (ttl) == BLOCK_POINTER_TYPE
      && TREE_CODE (ttr) == BLOCK_POINTER_TYPE)
    return types_are_block_compatible (TREE_TYPE (ttl),
         TREE_TYPE (ttr));
  if (TREE_CODE (ttl) != TREE_CODE (ttr))
    return 0;




  mvl = TREE_TYPE (ttl);
  mvr = TREE_TYPE (ttr);
  if (TREE_CODE (mvl) != ARRAY_TYPE)
    mvl = TYPE_MAIN_VARIANT (mvl);
  if (TREE_CODE (mvr) != ARRAY_TYPE)
    mvr = TYPE_MAIN_VARIANT (mvr);
  val = comptypes (mvl, mvr);

  if (val == 2 && pedantic)
    pedwarn ("types are not quite compatible");
  return val;
}
