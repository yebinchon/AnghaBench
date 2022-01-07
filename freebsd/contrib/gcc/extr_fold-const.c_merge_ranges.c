
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;



 int EQ_EXPR ;
 int GET_MODE_BITSIZE (int ) ;
 int GT_EXPR ;
 int INTEGER_CST ;

 int LE_EXPR ;
 int LT_EXPR ;
 int NULL_TREE ;
 int PLUS_EXPR ;

 int TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int TYPE_MAX_VALUE (scalar_t__) ;
 int TYPE_MIN_VALUE (scalar_t__) ;
 int TYPE_MODE (scalar_t__) ;
 int TYPE_PRECISION (scalar_t__) ;
 int TYPE_UNSIGNED (scalar_t__) ;
 scalar_t__ integer_one_node ;
 int integer_onep (scalar_t__) ;
 int integer_type_node ;
 int integer_zerop (scalar_t__) ;
 scalar_t__ range_binop (int ,int ,scalar_t__,int,scalar_t__,int) ;
 scalar_t__ range_predecessor (scalar_t__) ;
 scalar_t__ range_successor (scalar_t__) ;
 int tree_int_cst_equal (scalar_t__,int ) ;

__attribute__((used)) static int
merge_ranges (int *pin_p, tree *plow, tree *phigh, int in0_p, tree low0,
       tree high0, int in1_p, tree low1, tree high1)
{
  int no_overlap;
  int subset;
  int temp;
  tree tem;
  int in_p;
  tree low, high;
  int lowequal = ((low0 == 0 && low1 == 0)
    || integer_onep (range_binop (EQ_EXPR, integer_type_node,
      low0, 0, low1, 0)));
  int highequal = ((high0 == 0 && high1 == 0)
     || integer_onep (range_binop (EQ_EXPR, integer_type_node,
       high0, 1, high1, 1)));



  if (integer_onep (range_binop (GT_EXPR, integer_type_node,
     low0, 0, low1, 0))
      || (lowequal
   && integer_onep (range_binop (GT_EXPR, integer_type_node,
     high1, 1, high0, 1))))
    {
      temp = in0_p, in0_p = in1_p, in1_p = temp;
      tem = low0, low0 = low1, low1 = tem;
      tem = high0, high0 = high1, high1 = tem;
    }




  no_overlap = integer_onep (range_binop (LT_EXPR, integer_type_node,
       high0, 1, low1, 0));
  subset = integer_onep (range_binop (LE_EXPR, integer_type_node,
          high1, 1, high0, 1));



  if (in0_p && in1_p)
    {



      if (no_overlap)
 in_p = 0, low = high = 0;
      else if (subset)
 in_p = 1, low = low1, high = high1;
      else
 in_p = 1, low = low1, high = high0;
    }

  else if (in0_p && ! in1_p)
    {
      if (no_overlap)
 in_p = 1, low = low0, high = high0;
      else if (lowequal && highequal)
 in_p = 0, low = high = 0;
      else if (subset && lowequal)
 {
   low = range_successor (high1);
   high = high0;
   in_p = 1;
   if (low == 0)
     {


       return 0;
     }
 }
      else if (! subset || highequal)
 {
   low = low0;
   high = range_predecessor (low1);
   in_p = 1;
   if (high == 0)
     {

       return 0;
     }
 }
      else
 return 0;
    }

  else if (! in0_p && in1_p)
    {




      if (no_overlap)
 in_p = 1, low = low1, high = high1;
      else if (subset || highequal)
 in_p = 0, low = high = 0;
      else
 {
   low = range_successor (high0);
   high = high1;
   in_p = 1;
   if (low == 0)
     {

       return 0;
     }
 }
    }

  else
    {






      if (no_overlap)
 {
   if (integer_onep (range_binop (EQ_EXPR, integer_type_node,
      range_successor (high0),
      1, low1, 0)))
     in_p = 0, low = low0, high = high1;
   else
     {

       if (low0 && TREE_CODE (low0) == INTEGER_CST)
  switch (TREE_CODE (TREE_TYPE (low0)))
    {
    case 130:
      if (TYPE_PRECISION (TREE_TYPE (low0))
   != GET_MODE_BITSIZE (TYPE_MODE (TREE_TYPE (low0))))
        break;

    case 129:
      if (tree_int_cst_equal (low0,
         TYPE_MIN_VALUE (TREE_TYPE (low0))))
        low0 = 0;
      break;
    case 128:
      if (TYPE_UNSIGNED (TREE_TYPE (low0))
   && integer_zerop (low0))
        low0 = 0;
      break;
    default:
      break;
    }


       if (high1 && TREE_CODE (high1) == INTEGER_CST)
  switch (TREE_CODE (TREE_TYPE (high1)))
    {
    case 130:
      if (TYPE_PRECISION (TREE_TYPE (high1))
   != GET_MODE_BITSIZE (TYPE_MODE (TREE_TYPE (high1))))
        break;

    case 129:
      if (tree_int_cst_equal (high1,
         TYPE_MAX_VALUE (TREE_TYPE (high1))))
        high1 = 0;
      break;
    case 128:
      if (TYPE_UNSIGNED (TREE_TYPE (high1))
   && integer_zerop (range_binop (PLUS_EXPR, NULL_TREE,
             high1, 1,
             integer_one_node, 1)))
        high1 = 0;
      break;
    default:
      break;
    }





       if (low0 == 0 && high1 == 0)
         {
    low = range_successor (high0);
    high = range_predecessor (low1);
    if (low == 0 || high == 0)
      return 0;

    in_p = 1;
  }
       else
  return 0;
     }
 }
      else if (subset)
 in_p = 0, low = low0, high = high0;
      else
 in_p = 0, low = low0, high = high1;
    }

  *pin_p = in_p, *plow = low, *phigh = high;
  return 1;
}
