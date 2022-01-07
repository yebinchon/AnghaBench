
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;



 int FIELD_DECL ;





 int TREE_CHAIN (int ) ;
 int TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_FIELDS (int ) ;


__attribute__((used)) static int
contains_pointers_p (tree type)
{
  switch (TREE_CODE (type))
    {
    case 132:
    case 129:


    case 133:
      return 1;

    case 130:
    case 128:
    case 131:
      {
 tree fields;

 for (fields = TYPE_FIELDS (type); fields; fields = TREE_CHAIN (fields))
   if (TREE_CODE (fields) == FIELD_DECL
       && contains_pointers_p (TREE_TYPE (fields)))
     return 1;
 return 0;
      }

    case 134:

      return contains_pointers_p (TREE_TYPE (type));

    default:
      return 0;
    }
}
