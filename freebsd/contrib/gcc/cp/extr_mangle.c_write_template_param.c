
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;



 int MANGLE_TRACE_TREE (char*,int const) ;
 int NULL_TREE ;
 int TEMPLATE_PARM_DECL (int const) ;
 int TEMPLATE_PARM_IDX (int const) ;

 int TEMPLATE_PARM_LEVEL (int const) ;

 int TEMPLATE_TYPE_IDX (int const) ;
 int TEMPLATE_TYPE_LEVEL (int const) ;

 int TREE_CODE (int const) ;
 int TREE_TYPE (int ) ;
 int gcc_unreachable () ;
 int write_char (char) ;
 int write_unsigned_number (int) ;

__attribute__((used)) static void
write_template_param (const tree parm)
{
  int parm_index;
  int parm_level;
  tree parm_type = NULL_TREE;

  MANGLE_TRACE_TREE ("template-parm", parm);

  switch (TREE_CODE (parm))
    {
    case 128:
    case 129:
    case 131:
      parm_index = TEMPLATE_TYPE_IDX (parm);
      parm_level = TEMPLATE_TYPE_LEVEL (parm);
      break;

    case 130:
      parm_index = TEMPLATE_PARM_IDX (parm);
      parm_level = TEMPLATE_PARM_LEVEL (parm);
      parm_type = TREE_TYPE (TEMPLATE_PARM_DECL (parm));
      break;

    default:
      gcc_unreachable ();
    }

  write_char ('T');


  if (parm_index > 0)
    write_unsigned_number (parm_index - 1);
  write_char ('_');
}
