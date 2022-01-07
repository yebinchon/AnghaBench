
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int POINTER_TYPE ;
 int TREE_CHAIN (int ) ;
 int TREE_VALUE (int ) ;
 int VOID_TYPE ;
 char* c_getstr (int ) ;
 int validate_arglist (int ,int ,int ,int ) ;

__attribute__((used)) static tree
fold_builtin_strcat (tree arglist)
{
  if (!validate_arglist (arglist, POINTER_TYPE, POINTER_TYPE, VOID_TYPE))
    return 0;
  else
    {
      tree dst = TREE_VALUE (arglist),
 src = TREE_VALUE (TREE_CHAIN (arglist));
      const char *p = c_getstr (src);


      if (p && *p == '\0')
 return dst;

      return 0;
    }
}
