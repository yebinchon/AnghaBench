
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int pretty_printer ;


 int INDENT (int) ;
 scalar_t__ POINTER_TYPE ;
 scalar_t__ QUAL_UNION_TYPE ;
 scalar_t__ RECORD_TYPE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_FIELDS (scalar_t__) ;
 scalar_t__ TYPE_NAME (scalar_t__) ;
 scalar_t__ UNION_TYPE ;
 int dump_generic_node (int *,scalar_t__,int,int ,int) ;
 int pp_character (int *,char) ;
 int pp_newline (int *) ;
 int pp_string (int *,char*) ;
 int print_declaration (int *,scalar_t__,int,int) ;

__attribute__((used)) static void
print_struct_decl (pretty_printer *buffer, tree node, int spc, int flags)
{

  if (TYPE_NAME (node))
    {
      INDENT (spc);
      if (TREE_CODE (node) == RECORD_TYPE)
 pp_string (buffer, "struct ");
      else if ((TREE_CODE (node) == UNION_TYPE
  || TREE_CODE (node) == QUAL_UNION_TYPE))
 pp_string (buffer, "union ");

      dump_generic_node (buffer, TYPE_NAME (node), spc, 0, 0);
    }


  pp_newline (buffer);
  INDENT (spc);
  pp_character (buffer, '{');
  pp_newline (buffer);


  {
    tree tmp;
    tmp = TYPE_FIELDS (node);
    while (tmp)
      {





 if (TREE_TYPE (tmp) != node
     || (TREE_CODE (TREE_TYPE (tmp)) == POINTER_TYPE
  && TREE_TYPE (TREE_TYPE (tmp)) != node))
   {
     print_declaration (buffer, tmp, spc+2, flags);
     pp_newline (buffer);
   }
 tmp = TREE_CHAIN (tmp);
      }
  }
  INDENT (spc);
  pp_character (buffer, '}');
}
