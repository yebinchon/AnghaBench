
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {int unqiue_block_number; } ;


 scalar_t__ DECL_CONTEXT (scalar_t__) ;
 int DECL_NAME (scalar_t__) ;
 TYPE_1__* DECL_STRUCT_FUNCTION (scalar_t__) ;
 scalar_t__ FUNCTION_DECL ;
 int IDENTIFIER_LENGTH (int ) ;
 char* IDENTIFIER_POINTER (int ) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ alloca (int) ;
 scalar_t__ current_function_decl ;
 scalar_t__ get_identifier (char*) ;
 int sprintf (char*,char*,...) ;

tree
build_block_helper_name (int unique_count)
{
  char *buf;
  if (!current_function_decl)
    {

      static int global_count;
      buf = (char *)alloca (32);
      sprintf (buf, "__block_global_%d", ++global_count);

    }
  else
    {
      tree outer_decl = current_function_decl;

      while (outer_decl &&
       DECL_CONTEXT (outer_decl) && TREE_CODE (DECL_CONTEXT (outer_decl)) == FUNCTION_DECL)

  outer_decl = DECL_CONTEXT (outer_decl);

      if (!unique_count)
  unique_count = ++DECL_STRUCT_FUNCTION(outer_decl)->unqiue_block_number;

      buf = (char *)alloca (IDENTIFIER_LENGTH (DECL_NAME (outer_decl)) + 32);
      sprintf (buf, "__%s_block_invoke_%d",
        IDENTIFIER_POINTER (DECL_NAME (outer_decl)), unique_count);
    }
   return get_identifier (buf);
}
