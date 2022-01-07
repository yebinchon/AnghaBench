
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;





 scalar_t__ CONTAINS_PLACEHOLDER_P (int ) ;
 int DECL_FIELD_OFFSET (int ) ;
 int DECL_QUALIFIER (int ) ;

 int const FIELD_DECL ;
 int TREE_CHAIN (int ) ;
 int const TREE_CODE (int ) ;
 scalar_t__ TREE_TYPE (int ) ;
 scalar_t__ TYPE_DOMAIN (int ) ;
 int TYPE_FIELDS (int ) ;
 int TYPE_MAX_VALUE (int ) ;
 int TYPE_MIN_VALUE (int ) ;
 int TYPE_SIZE (int ) ;
 int TYPE_SIZE_UNIT (int ) ;



 int gcc_unreachable () ;
 int type_contains_placeholder_p (scalar_t__) ;

__attribute__((used)) static bool
type_contains_placeholder_1 (tree type)
{


  if (CONTAINS_PLACEHOLDER_P (TYPE_SIZE (type))
      || CONTAINS_PLACEHOLDER_P (TYPE_SIZE_UNIT (type))
      || (TREE_TYPE (type) != 0
   && type_contains_placeholder_p (TREE_TYPE (type))))
    return 1;



  switch (TREE_CODE (type))
    {
    case 128:
    case 141:
    case 140:
    case 142:
    case 135:
    case 136:
    case 131:
    case 137:
    case 139:
    case 129:
      return 0;

    case 138:
    case 133:

      return (CONTAINS_PLACEHOLDER_P (TYPE_MIN_VALUE (type))
       || CONTAINS_PLACEHOLDER_P (TYPE_MAX_VALUE (type)));

    case 143:


      return type_contains_placeholder_p (TYPE_DOMAIN (type));

    case 132:
    case 130:
    case 134:
      {
 tree field;

 for (field = TYPE_FIELDS (type); field; field = TREE_CHAIN (field))
   if (TREE_CODE (field) == FIELD_DECL
       && (CONTAINS_PLACEHOLDER_P (DECL_FIELD_OFFSET (field))
    || (TREE_CODE (type) == 134
        && CONTAINS_PLACEHOLDER_P (DECL_QUALIFIER (field)))
    || type_contains_placeholder_p (TREE_TYPE (field))))
     return 1;

 return 0;
      }

    default:
      gcc_unreachable ();
    }
}
