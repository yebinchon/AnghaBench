
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int OPT_Wformat ;
 int POINTER_TYPE_P (int ) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 unsigned int TREE_INT_CST_LOW (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 int integer_zerop (scalar_t__) ;
 scalar_t__ lookup_attribute (char*,scalar_t__) ;
 scalar_t__ null_node ;
 scalar_t__ warn_strict_null_sentinel ;
 int warning (int ,char*) ;

__attribute__((used)) static void
check_function_sentinel (tree attrs, tree params, tree typelist)
{
  tree attr = lookup_attribute ("sentinel", attrs);

  if (attr)
    {

      while (typelist && params)
      {
 typelist = TREE_CHAIN (typelist);
 params = TREE_CHAIN (params);
      }

      if (typelist || !params)
 warning (OPT_Wformat,
   "not enough variable arguments to fit a sentinel");
      else
 {
   tree sentinel, end;
   unsigned pos = 0;

   if (TREE_VALUE (attr))
     {
       tree p = TREE_VALUE (TREE_VALUE (attr));
       pos = TREE_INT_CST_LOW (p);
     }

   sentinel = end = params;


   while (pos > 0 && TREE_CHAIN (end))
     {
       pos--;
       end = TREE_CHAIN (end);
     }
   if (pos > 0)
     {
       warning (OPT_Wformat,
         "not enough variable arguments to fit a sentinel");
       return;
     }


   while (TREE_CHAIN (end))
     {
       end = TREE_CHAIN (end);
       sentinel = TREE_CHAIN (sentinel);
     }


   if ((!POINTER_TYPE_P (TREE_TYPE (TREE_VALUE (sentinel)))
        || !integer_zerop (TREE_VALUE (sentinel)))





       && (warn_strict_null_sentinel
    || null_node != TREE_VALUE (sentinel)))
     warning (OPT_Wformat, "missing sentinel in function call");
 }
    }
}
