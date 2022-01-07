
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int ARRAY_TYPE ;




 scalar_t__ POINTER_TYPE_P (int ) ;



 int TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_MAIN_VARIANT (int ) ;




__attribute__((used)) static bool
type_to_consider (tree type)
{

  type = TYPE_MAIN_VARIANT (type);
  while (POINTER_TYPE_P (type) || TREE_CODE (type) == ARRAY_TYPE)
    type = TYPE_MAIN_VARIANT (TREE_TYPE (type));

  switch (TREE_CODE (type))
    {
    case 137:
    case 136:
    case 135:
    case 134:
    case 133:
    case 132:
    case 131:
    case 130:
    case 129:
    case 128:
      return 1;

    default:
      return 0;
    }
}
