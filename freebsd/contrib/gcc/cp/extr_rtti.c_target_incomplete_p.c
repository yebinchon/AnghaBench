
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int COMPLETE_OR_VOID_TYPE_P (int ) ;
 int COMPLETE_TYPE_P (int ) ;
 scalar_t__ POINTER_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_PTRMEM_CLASS_TYPE (int ) ;
 scalar_t__ TYPE_PTRMEM_P (int ) ;
 int TYPE_PTRMEM_POINTED_TO_TYPE (int ) ;

__attribute__((used)) static bool
target_incomplete_p (tree type)
{
  while (1)
    if (TYPE_PTRMEM_P (type))
      {
 if (!COMPLETE_TYPE_P (TYPE_PTRMEM_CLASS_TYPE (type)))
   return 1;
 type = TYPE_PTRMEM_POINTED_TO_TYPE (type);
      }
    else if (TREE_CODE (type) == POINTER_TYPE)
      type = TREE_TYPE (type);
    else
      return !COMPLETE_OR_VOID_TYPE_P (type);
}
