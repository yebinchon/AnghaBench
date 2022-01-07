
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TYPE_PTRMEM_CLASS_TYPE (int ) ;
 int TYPE_PTRMEM_POINTED_TO_TYPE (int ) ;
 scalar_t__ TYPE_PTR_TO_MEMBER_P (int ) ;
 scalar_t__ variably_modified_type_p (int ,int ) ;

bool
cp_var_mod_type_p (tree type, tree fn)
{


  if (TYPE_PTR_TO_MEMBER_P (type))
    return (variably_modified_type_p (TYPE_PTRMEM_CLASS_TYPE (type), fn)
     || variably_modified_type_p (TYPE_PTRMEM_POINTED_TO_TYPE (type),
      fn));


  return 0;
}
