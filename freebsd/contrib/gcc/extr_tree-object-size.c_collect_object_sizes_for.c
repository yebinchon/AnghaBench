
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct object_size_info {int object_size_type; scalar_t__ pass; int reexamine; int visited; } ;



 int CALL_EXPR ;
 int DECL_INITIAL (int ) ;
 int IS_EMPTY_STMT (int ) ;


 int PARM_DECL ;
 int PHI_ARG_DEF (int ,int) ;

 int PHI_NUM_ARGS (int ) ;
 int PLUS_EXPR ;
 int POINTER_TYPE_P (int ) ;

 int SSA_NAME ;
 int SSA_NAME_DEF_STMT (int ) ;
 int SSA_NAME_VAR (int ) ;
 unsigned int SSA_NAME_VERSION (int ) ;
 int STRIP_NOPS (int ) ;
 int TDF_DETAILS ;
 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 scalar_t__ bitmap_bit_p (int ,unsigned int) ;
 int bitmap_clear_bit (int ,unsigned int) ;
 int bitmap_set_bit (int ,unsigned int) ;
 int * computed ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int expr_object_size (struct object_size_info*,int ,int ) ;
 int fprintf (scalar_t__,char*) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int merge_object_sizes (struct object_size_info*,int ,int ,int ) ;
 int** object_sizes ;
 int pass_through_call (int ) ;
 int plus_expr_object_size (struct object_size_info*,int ,int ) ;
 int print_generic_expr (scalar_t__,int ,int) ;
 int* unknown ;

__attribute__((used)) static void
collect_object_sizes_for (struct object_size_info *osi, tree var)
{
  int object_size_type = osi->object_size_type;
  unsigned int varno = SSA_NAME_VERSION (var);
  tree stmt;
  bool reexamine;

  if (bitmap_bit_p (computed[object_size_type], varno))
    return;

  if (osi->pass == 0)
    {
      if (! bitmap_bit_p (osi->visited, varno))
 {
   bitmap_set_bit (osi->visited, varno);
   object_sizes[object_size_type][varno]
     = (object_size_type & 2) ? -1 : 0;
 }
      else
 {


   bitmap_set_bit (osi->reexamine, varno);
   if (dump_file && (dump_flags & TDF_DETAILS))
     {
       fprintf (dump_file, "Found a dependency loop at ");
       print_generic_expr (dump_file, var, dump_flags);
       fprintf (dump_file, "\n");
     }
   return;
 }
    }

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      fprintf (dump_file, "Visiting use-def links for ");
      print_generic_expr (dump_file, var, dump_flags);
      fprintf (dump_file, "\n");
    }

  stmt = SSA_NAME_DEF_STMT (var);
  reexamine = 0;

  switch (TREE_CODE (stmt))
    {
    case 128:
      gcc_assert (TREE_CODE (TREE_OPERAND (stmt, 0)) == 131);
      stmt = TREE_OPERAND (stmt, 0);


    case 131:
      {
 tree rhs = TREE_OPERAND (stmt, 1), arg;
 STRIP_NOPS (rhs);

 if (TREE_CODE (rhs) == CALL_EXPR)
   {
     arg = pass_through_call (rhs);
     if (arg)
       rhs = arg;
   }

 if (TREE_CODE (rhs) == SSA_NAME
     && POINTER_TYPE_P (TREE_TYPE (rhs)))
   reexamine = merge_object_sizes (osi, var, rhs, 0);

 else if (TREE_CODE (rhs) == PLUS_EXPR)
   reexamine = plus_expr_object_size (osi, var, rhs);

 else
   expr_object_size (osi, var, rhs);
 break;
      }

    case 132:

      object_sizes[object_size_type][varno] = unknown[object_size_type];
      break;

    case 130:
      {
 tree decl = SSA_NAME_VAR (var);

 gcc_assert (IS_EMPTY_STMT (stmt));

 if (TREE_CODE (decl) != PARM_DECL && DECL_INITIAL (decl))
   expr_object_size (osi, var, DECL_INITIAL (decl));
 else
   expr_object_size (osi, var, decl);
      }
      break;

    case 129:
      {
 int i;

 for (i = 0; i < PHI_NUM_ARGS (stmt); i++)
   {
     tree rhs = PHI_ARG_DEF (stmt, i);

     if (object_sizes[object_size_type][varno]
  == unknown[object_size_type])
       break;

     if (TREE_CODE (rhs) == SSA_NAME)
       reexamine |= merge_object_sizes (osi, var, rhs, 0);
     else if (osi->pass == 0)
       expr_object_size (osi, var, rhs);
   }
 break;
      }
    default:
      gcc_unreachable ();
    }

  if (! reexamine
      || object_sizes[object_size_type][varno] == unknown[object_size_type])
    {
      bitmap_set_bit (computed[object_size_type], varno);
      bitmap_clear_bit (osi->reexamine, varno);
    }
  else
    {
      bitmap_set_bit (osi->reexamine, varno);
      if (dump_file && (dump_flags & TDF_DETAILS))
 {
   fprintf (dump_file, "Need to reexamine ");
   print_generic_expr (dump_file, var, dump_flags);
   fprintf (dump_file, "\n");
 }
    }
}
