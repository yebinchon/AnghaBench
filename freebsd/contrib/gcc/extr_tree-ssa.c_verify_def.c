
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef TYPE_1__* basic_block ;
struct TYPE_4__ {char* index; } ;


 scalar_t__ SSA_NAME_DEF_STMT (scalar_t__) ;
 size_t SSA_NAME_VERSION (scalar_t__) ;
 int TDF_VOPS ;
 int error (char*,...) ;
 int fprintf (int ,char*) ;
 int print_generic_expr (int ,scalar_t__,int ) ;
 int print_generic_stmt (int ,scalar_t__,int ) ;
 int stderr ;
 scalar_t__ verify_ssa_name (scalar_t__,int) ;

__attribute__((used)) static bool
verify_def (basic_block bb, basic_block *definition_block, tree ssa_name,
     tree stmt, bool is_virtual)
{
  if (verify_ssa_name (ssa_name, is_virtual))
    goto err;

  if (definition_block[SSA_NAME_VERSION (ssa_name)])
    {
      error ("SSA_NAME created in two different blocks %i and %i",
      definition_block[SSA_NAME_VERSION (ssa_name)]->index, bb->index);
      goto err;
    }

  definition_block[SSA_NAME_VERSION (ssa_name)] = bb;

  if (SSA_NAME_DEF_STMT (ssa_name) != stmt)
    {
      error ("SSA_NAME_DEF_STMT is wrong");
      fprintf (stderr, "Expected definition statement:\n");
      print_generic_stmt (stderr, SSA_NAME_DEF_STMT (ssa_name), TDF_VOPS);
      fprintf (stderr, "\nActual definition statement:\n");
      print_generic_stmt (stderr, stmt, TDF_VOPS);
      goto err;
    }

  return 0;

err:
  fprintf (stderr, "while verifying SSA_NAME ");
  print_generic_expr (stderr, ssa_name, 0);
  fprintf (stderr, " in statement\n");
  print_generic_stmt (stderr, stmt, TDF_VOPS);

  return 1;
}
