
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CHREC_LEFT (int ) ;
 int CHREC_RIGHT (int ) ;
 unsigned int CHREC_VARIABLE (int ) ;
 int NULL_TREE ;

 int const TREE_CODE (int ) ;
 scalar_t__ automatically_generated_chrec_p (int ) ;
 int build_polynomial_chrec (unsigned int,int ,int ) ;

__attribute__((used)) static tree
chrec_component_in_loop_num (tree chrec,
        unsigned loop_num,
        bool right)
{
  tree component;

  if (automatically_generated_chrec_p (chrec))
    return chrec;

  switch (TREE_CODE (chrec))
    {
    case 128:
      if (CHREC_VARIABLE (chrec) == loop_num)
 {
   if (right)
     component = CHREC_RIGHT (chrec);
   else
     component = CHREC_LEFT (chrec);

   if (TREE_CODE (CHREC_LEFT (chrec)) != 128
       || CHREC_VARIABLE (CHREC_LEFT (chrec)) != CHREC_VARIABLE (chrec))
     return component;

   else
     return build_polynomial_chrec
       (loop_num,
        chrec_component_in_loop_num (CHREC_LEFT (chrec),
         loop_num,
         right),
        component);
 }

      else if (CHREC_VARIABLE (chrec) < loop_num)

 return NULL_TREE;

      else
 return chrec_component_in_loop_num (CHREC_LEFT (chrec),
         loop_num,
         right);

     default:
      if (right)
 return NULL_TREE;
      else
 return chrec;
    }
}
