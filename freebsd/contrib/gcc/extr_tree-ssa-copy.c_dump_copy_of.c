
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int sbitmap ;
struct TYPE_4__ {scalar_t__ value; } ;
struct TYPE_3__ {scalar_t__ value; } ;
typedef int FILE ;


 scalar_t__ NULL_TREE ;
 int SET_BIT (int ,size_t) ;
 scalar_t__ SSA_NAME ;
 size_t SSA_NAME_VERSION (scalar_t__) ;
 scalar_t__ TEST_BIT (int ,size_t) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 TYPE_2__* copy_of ;
 int dump_flags ;
 int fprintf (int *,char*) ;
 TYPE_1__* get_copy_of_val (scalar_t__) ;
 int num_ssa_names ;
 int print_generic_expr (int *,scalar_t__,int ) ;
 int sbitmap_alloc (int ) ;
 int sbitmap_free (int ) ;
 int sbitmap_zero (int ) ;

__attribute__((used)) static void
dump_copy_of (FILE *file, tree var)
{
  tree val;
  sbitmap visited;

  print_generic_expr (file, var, dump_flags);

  if (TREE_CODE (var) != SSA_NAME)
    return;

  visited = sbitmap_alloc (num_ssa_names);
  sbitmap_zero (visited);
  SET_BIT (visited, SSA_NAME_VERSION (var));

  fprintf (file, " copy-of chain: ");

  val = var;
  print_generic_expr (file, val, 0);
  fprintf (file, " ");
  while (copy_of[SSA_NAME_VERSION (val)].value)
    {
      fprintf (file, "-> ");
      val = copy_of[SSA_NAME_VERSION (val)].value;
      print_generic_expr (file, val, 0);
      fprintf (file, " ");
      if (TEST_BIT (visited, SSA_NAME_VERSION (val)))
        break;
      SET_BIT (visited, SSA_NAME_VERSION (val));
    }

  val = get_copy_of_val (var)->value;
  if (val == NULL_TREE)
    fprintf (file, "[UNDEFINED]");
  else if (val != var)
    fprintf (file, "[COPY]");
  else
    fprintf (file, "[NOT A COPY]");

  sbitmap_free (visited);
}
