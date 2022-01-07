
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;







 int IS_AGGR_TYPE (scalar_t__) ;
 int LOOKUP_NORMAL ;
 scalar_t__ NULL_TREE ;
 int OPT_Wconversion ;


 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 int TYPE_HAS_CONVERSION (scalar_t__) ;

 int WANT_ENUM ;
 int WANT_FLOAT ;
 int WANT_INT ;
 int WANT_NULL ;
 int WANT_POINTER ;
 int WANT_VECTOR ;
 scalar_t__ build_user_type_conversion (scalar_t__,scalar_t__,int ) ;
 int complete_type_or_else (scalar_t__,scalar_t__) ;
 scalar_t__ decay_conversion (scalar_t__) ;
 int error (char*,scalar_t__,...) ;
 scalar_t__ error_mark_node ;
 scalar_t__ lookup_conversions (scalar_t__) ;
 scalar_t__ non_reference (scalar_t__) ;
 scalar_t__ null_node ;
 int null_ptr_cst_p (scalar_t__) ;
 int warning (int ,char*) ;

tree
build_expr_type_conversion (int desires, tree expr, bool complain)
{
  tree basetype = TREE_TYPE (expr);
  tree conv = NULL_TREE;
  tree winner = NULL_TREE;

  if (expr == null_node
      && (desires & WANT_INT)
      && !(desires & WANT_NULL))
    warning (OPT_Wconversion, "converting NULL to non-pointer type");

  basetype = TREE_TYPE (expr);

  if (basetype == error_mark_node)
    return error_mark_node;

  if (! IS_AGGR_TYPE (basetype))
    switch (TREE_CODE (basetype))
      {
      case 131:
 if ((desires & WANT_NULL) && null_ptr_cst_p (expr))
   return expr;


      case 134:
 return (desires & WANT_INT) ? expr : NULL_TREE;
      case 133:
 return (desires & WANT_ENUM) ? expr : NULL_TREE;
      case 129:
 return (desires & WANT_FLOAT) ? expr : NULL_TREE;
      case 130:
 return (desires & WANT_POINTER) ? expr : NULL_TREE;

      case 132:
      case 135:
 return (desires & WANT_POINTER) ? decay_conversion (expr)
     : NULL_TREE;

      case 128:
 if ((desires & WANT_VECTOR) == 0)
   return NULL_TREE;
 switch (TREE_CODE (TREE_TYPE (basetype)))
   {
   case 131:
   case 134:
     return (desires & WANT_INT) ? expr : NULL_TREE;
   case 133:
     return (desires & WANT_ENUM) ? expr : NULL_TREE;
   case 129:
     return (desires & WANT_FLOAT) ? expr : NULL_TREE;
   default:
     return NULL_TREE;
   }

      default:
 return NULL_TREE;
      }



  if (!complete_type_or_else (basetype, expr))
    return error_mark_node;
  if (!TYPE_HAS_CONVERSION (basetype))
    return NULL_TREE;

  for (conv = lookup_conversions (basetype); conv; conv = TREE_CHAIN (conv))
    {
      int win = 0;
      tree candidate;
      tree cand = TREE_VALUE (conv);

      if (winner && winner == cand)
 continue;

      candidate = non_reference (TREE_TYPE (TREE_TYPE (cand)));

      switch (TREE_CODE (candidate))
 {
 case 134:
 case 131:
   win = (desires & WANT_INT); break;
 case 133:
   win = (desires & WANT_ENUM); break;
 case 129:
   win = (desires & WANT_FLOAT); break;
 case 130:
   win = (desires & WANT_POINTER); break;

 case 128:
   if ((desires & WANT_VECTOR) == 0)
     break;
   switch (TREE_CODE (TREE_TYPE (candidate)))
     {
     case 134:
     case 131:
       win = (desires & WANT_INT); break;
     case 133:
       win = (desires & WANT_ENUM); break;
     case 129:
       win = (desires & WANT_FLOAT); break;
     default:
       break;
     }
   break;

 default:
   break;
 }

      if (win)
 {
   if (winner)
     {
       if (complain)
  {
    error ("ambiguous default type conversion from %qT",
    basetype);
    error ("  candidate conversions include %qD and %qD",
    winner, cand);
  }
       return error_mark_node;
     }
   else
     winner = cand;
 }
    }

  if (winner)
    {
      tree type = non_reference (TREE_TYPE (TREE_TYPE (winner)));
      return build_user_type_conversion (type, expr, LOOKUP_NORMAL);
    }

  return NULL_TREE;
}
