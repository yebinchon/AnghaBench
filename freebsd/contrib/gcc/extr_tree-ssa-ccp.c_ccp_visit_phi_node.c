
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef void* tree ;
struct TYPE_13__ {int lattice_val; void* mem_ref; void* value; } ;
typedef TYPE_3__ prop_value_t ;
typedef enum ssa_prop_result { ____Placeholder_ssa_prop_result } ssa_prop_result ;
typedef TYPE_4__* edge ;
struct TYPE_14__ {int flags; TYPE_2__* dest; TYPE_1__* src; } ;
struct TYPE_12__ {int index; } ;
struct TYPE_11__ {int index; } ;



 int EDGE_EXECUTABLE ;
 void* NULL_TREE ;
 void* PHI_ARG_DEF (void*,int) ;
 TYPE_4__* PHI_ARG_EDGE (void*,int) ;
 int PHI_NUM_ARGS (void*) ;
 void* PHI_RESULT (void*) ;
 int SSA_PROP_INTERESTING ;
 int SSA_PROP_NOT_INTERESTING ;
 int SSA_PROP_VARYING ;
 int TDF_DETAILS ;




 int ccp_lattice_meet (TYPE_3__*,TYPE_3__*) ;
 scalar_t__ do_store_ccp ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int dump_lattice_value (scalar_t__,char*,TYPE_3__) ;
 int fprintf (scalar_t__,char*,...) ;
 int gcc_assert (scalar_t__) ;
 int gcc_unreachable () ;
 TYPE_3__* get_value (void*,int) ;
 scalar_t__ is_gimple_min_invariant (void*) ;
 int print_generic_expr (scalar_t__,void*,int) ;
 scalar_t__ set_lattice_value (void*,TYPE_3__) ;

__attribute__((used)) static enum ssa_prop_result
ccp_visit_phi_node (tree phi)
{
  int i;
  prop_value_t *old_val, new_val;

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      fprintf (dump_file, "\nVisiting PHI node: ");
      print_generic_expr (dump_file, phi, dump_flags);
    }

  old_val = get_value (PHI_RESULT (phi), 0);
  switch (old_val->lattice_val)
    {
    case 128:
      return SSA_PROP_VARYING;

    case 132:
      new_val = *old_val;
      break;

    case 129:






      gcc_assert (do_store_ccp);



    case 131:
    case 130:
      new_val.lattice_val = 131;
      new_val.value = NULL_TREE;
      new_val.mem_ref = NULL_TREE;
      break;

    default:
      gcc_unreachable ();
    }

  for (i = 0; i < PHI_NUM_ARGS (phi); i++)
    {


      edge e = PHI_ARG_EDGE (phi, i);

      if (dump_file && (dump_flags & TDF_DETAILS))
 {
   fprintf (dump_file,
       "\n    Argument #%d (%d -> %d %sexecutable)\n",
       i, e->src->index, e->dest->index,
       (e->flags & EDGE_EXECUTABLE) ? "" : "not ");
 }



      if (e->flags & EDGE_EXECUTABLE)
 {
   tree arg = PHI_ARG_DEF (phi, i);
   prop_value_t arg_val;

   if (is_gimple_min_invariant (arg))
     {
       arg_val.lattice_val = 132;
       arg_val.value = arg;
       arg_val.mem_ref = NULL_TREE;
     }
   else
     arg_val = *(get_value (arg, 1));

   ccp_lattice_meet (&new_val, &arg_val);

   if (dump_file && (dump_flags & TDF_DETAILS))
     {
       fprintf (dump_file, "\t");
       print_generic_expr (dump_file, arg, dump_flags);
       dump_lattice_value (dump_file, "\tValue: ", arg_val);
       fprintf (dump_file, "\n");
     }

   if (new_val.lattice_val == 128)
     break;
 }
    }

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      dump_lattice_value (dump_file, "\n    PHI node value: ", new_val);
      fprintf (dump_file, "\n\n");
    }


  if (do_store_ccp
      && old_val->lattice_val == 129
      && new_val.lattice_val == 131)
    return SSA_PROP_NOT_INTERESTING;


  if (set_lattice_value (PHI_RESULT (phi), new_val))
    {
      if (new_val.lattice_val == 128)
 return SSA_PROP_VARYING;
      else
 return SSA_PROP_INTERESTING;
    }
  else
    return SSA_PROP_NOT_INTERESTING;
}
