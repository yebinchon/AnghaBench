
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ BINFO_BASE_ITERATE (scalar_t__,int,scalar_t__) ;
 scalar_t__ BINFO_TYPE (scalar_t__) ;
 scalar_t__ CLASS_TYPE_P (scalar_t__) ;
 scalar_t__ ENUMERAL_TYPE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_BINFO (scalar_t__) ;
 scalar_t__ TYPE_CONTEXT (scalar_t__) ;
 scalar_t__ TYPE_P (scalar_t__) ;
 scalar_t__ UNION_TYPE ;
 scalar_t__ is_friend (scalar_t__,scalar_t__) ;
 scalar_t__ type_unknown_p (scalar_t__) ;

__attribute__((used)) static bool
friend_of_associated_class_p (tree arg, tree fn)
{
  tree type;

  if (TYPE_P (arg))
    type = arg;
  else if (type_unknown_p (arg))
    return 0;
  else
    type = TREE_TYPE (arg);



  if (CLASS_TYPE_P (type))
    {
      if (is_friend (type, fn))
 return 1;

      if (TYPE_BINFO (type))
 {
   tree binfo, base_binfo;
   int i;

   for (binfo = TYPE_BINFO (type), i = 0;
        BINFO_BASE_ITERATE (binfo, i, base_binfo);
        i++)
     if (is_friend (BINFO_TYPE (base_binfo), fn))
       return 1;
 }
    }



  if ((CLASS_TYPE_P (type)
       || TREE_CODE (type) == UNION_TYPE
       || TREE_CODE (type) == ENUMERAL_TYPE)
      && TYPE_CONTEXT (type)
      && CLASS_TYPE_P (TYPE_CONTEXT (type))
      && is_friend (TYPE_CONTEXT (type), fn))
    return 1;

  return 0;
}
