
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ COMPONENT_REF ;
 int DECL_FIELD_CONTEXT (scalar_t__) ;
 scalar_t__ RECORD_TYPE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TYPE_MAIN_VARIANT (int ) ;

__attribute__((used)) static bool
nonoverlapping_component_refs_p (tree x, tree y)
{
  tree fieldx, fieldy, typex, typey, orig_y;

  do
    {


      orig_y = y;
      do
 {
   fieldx = TREE_OPERAND (x, 1);
   typex = TYPE_MAIN_VARIANT (DECL_FIELD_CONTEXT (fieldx));

   y = orig_y;
   do
     {
       fieldy = TREE_OPERAND (y, 1);
       typey = TYPE_MAIN_VARIANT (DECL_FIELD_CONTEXT (fieldy));

       if (typex == typey)
  goto found;

       y = TREE_OPERAND (y, 0);
     }
   while (y && TREE_CODE (y) == COMPONENT_REF);

   x = TREE_OPERAND (x, 0);
 }
      while (x && TREE_CODE (x) == COMPONENT_REF);

      return 0;

    found:


      if (TREE_CODE (typex) == RECORD_TYPE
   && fieldx != fieldy)
 return 1;



      x = TREE_OPERAND (x, 0);
      y = TREE_OPERAND (y, 0);
    }
  while (x && y
  && TREE_CODE (x) == COMPONENT_REF
  && TREE_CODE (y) == COMPONENT_REF);

  return 0;
}
