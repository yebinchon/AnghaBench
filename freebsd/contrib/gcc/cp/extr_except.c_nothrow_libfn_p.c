
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DECL_EXTERNAL (int ) ;
 scalar_t__ DECL_EXTERN_C_P (int ) ;
 int DECL_NAME (int ) ;
 scalar_t__ DECL_NAMESPACE_SCOPE_P (int ) ;
 int IDENTIFIER_LENGTH (int ) ;
 int IDENTIFIER_POINTER (int ) ;
 scalar_t__ TREE_PUBLIC (int ) ;
 int libc_name_p (int ,int ) ;

int
nothrow_libfn_p (tree fn)
{
  tree id;

  if (TREE_PUBLIC (fn)
      && DECL_EXTERNAL (fn)
      && DECL_NAMESPACE_SCOPE_P (fn)
      && DECL_EXTERN_C_P (fn))
            ;
  else

    return 0;




  id = DECL_NAME (fn);
  return !!libc_name_p (IDENTIFIER_POINTER (id), IDENTIFIER_LENGTH (id));
}
