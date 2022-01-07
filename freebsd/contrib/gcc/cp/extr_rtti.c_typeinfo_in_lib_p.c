
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;




 int POINTER_TYPE ;

 int TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_QUAL_CONST ;
 scalar_t__ TYPE_UNQUALIFIED ;

 scalar_t__ cp_type_quals (int ) ;

__attribute__((used)) static bool
typeinfo_in_lib_p (tree type)
{


  if (TREE_CODE (type) == POINTER_TYPE
      && (cp_type_quals (TREE_TYPE (type)) == TYPE_QUAL_CONST
   || cp_type_quals (TREE_TYPE (type)) == TYPE_UNQUALIFIED))
    type = TREE_TYPE (type);

  switch (TREE_CODE (type))
    {
    case 130:
    case 131:
    case 129:
    case 128:
      return 1;

    default:
      return 0;
    }
}
