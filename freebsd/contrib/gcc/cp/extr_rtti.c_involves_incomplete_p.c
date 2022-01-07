
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int COMPLETE_TYPE_P (int ) ;



 int TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_PTRMEMFUNC_P (int ) ;
 int TYPE_PTRMEM_CLASS_TYPE (int ) ;
 int TYPE_PTRMEM_POINTED_TO_TYPE (int ) ;

 int target_incomplete_p (int ) ;

__attribute__((used)) static bool
involves_incomplete_p (tree type)
{
  switch (TREE_CODE (type))
    {
    case 130:
      return target_incomplete_p (TREE_TYPE (type));

    case 131:
    ptrmem:
      return
 (target_incomplete_p (TYPE_PTRMEM_POINTED_TO_TYPE (type))
  || !COMPLETE_TYPE_P (TYPE_PTRMEM_CLASS_TYPE (type)));

    case 129:
      if (TYPE_PTRMEMFUNC_P (type))
 goto ptrmem;

    case 128:
      if (!COMPLETE_TYPE_P (type))
 return 1;

    default:

      return 0;
    }
}
