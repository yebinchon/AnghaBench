
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int ARRAY_TYPE ;
 int NULL_TREE ;

 int TREE_CHAIN (int ) ;
 int TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_DOMAIN (int ) ;
 int TYPE_FIELDS (int ) ;
 int TYPE_MAX_VALUE (int ) ;
 int TYPE_SIZE (int ) ;


__attribute__((used)) static bool
flexible_array_type_p (tree type)
{
  tree x;
  switch (TREE_CODE (type))
    {
    case 129:
      x = TYPE_FIELDS (type);
      if (x == NULL_TREE)
 return 0;
      while (TREE_CHAIN (x) != NULL_TREE)
 x = TREE_CHAIN (x);
      if (TREE_CODE (TREE_TYPE (x)) == ARRAY_TYPE
   && TYPE_SIZE (TREE_TYPE (x)) == NULL_TREE
   && TYPE_DOMAIN (TREE_TYPE (x)) != NULL_TREE
   && TYPE_MAX_VALUE (TYPE_DOMAIN (TREE_TYPE (x))) == NULL_TREE)
 return 1;
      return 0;
    case 128:
      for (x = TYPE_FIELDS (type); x != NULL_TREE; x = TREE_CHAIN (x))
 {
   if (flexible_array_type_p (TREE_TYPE (x)))
     return 1;
 }
      return 0;
    default:
    return 0;
  }
}
