
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_INITIAL (int ) ;


 int TEMPLATE_PARM_LEVEL (int ) ;
 int TEMPLATE_TYPE_LEVEL (int ) ;
 int TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;

 int gcc_unreachable () ;

__attribute__((used)) static int
template_decl_level (tree decl)
{
  switch (TREE_CODE (decl))
    {
    case 128:
    case 129:
      return TEMPLATE_TYPE_LEVEL (TREE_TYPE (decl));

    case 130:
      return TEMPLATE_PARM_LEVEL (DECL_INITIAL (decl));

    default:
      gcc_unreachable ();
    }
  return 0;
}
