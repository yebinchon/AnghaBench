
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct z_candidate {scalar_t__ fn; TYPE_2__** convs; struct candidate_warning* warnings; } ;
struct candidate_warning {int loser; struct candidate_warning* next; } ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_5__ {TYPE_2__* next; } ;
struct TYPE_6__ {scalar_t__ kind; TYPE_1__ u; } ;
typedef TYPE_2__ conversion ;
struct TYPE_7__ {int name; } ;




 scalar_t__ BASELINK_BINFO (scalar_t__) ;
 int BASELINK_FUNCTIONS (scalar_t__) ;





 scalar_t__ CLASS_TYPE_P (scalar_t__) ;




 scalar_t__ ENUMERAL_TYPE ;

 scalar_t__ FUNCTION_DECL ;




 int IS_OVERLOAD_TYPE (scalar_t__) ;

 int LOOKUP_COMPLAIN ;
 int LOOKUP_NORMAL ;
 int NOP_EXPR ;
 scalar_t__ NULL_TREE ;







 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;





 scalar_t__ TYPE_BINFO (scalar_t__) ;
 int TYPE_MAIN_VARIANT (scalar_t__) ;



 scalar_t__ VOID_TYPE ;
 int add_builtin_candidates (struct z_candidate**,int,int,scalar_t__,scalar_t__*,int) ;
 int add_candidates (int ,scalar_t__,scalar_t__,int,scalar_t__,scalar_t__,int,struct z_candidate**) ;
 scalar_t__ ansi_assopname (int) ;
 scalar_t__ ansi_opname (int) ;
 scalar_t__ build_array_ref (scalar_t__,scalar_t__) ;
 scalar_t__ build_conditional_expr (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ build_indirect_ref (scalar_t__,char*) ;
 scalar_t__ build_m_component_ref (scalar_t__,scalar_t__) ;
 scalar_t__ build_modify_expr (scalar_t__,int,scalar_t__) ;
 scalar_t__ build_object_call (scalar_t__,scalar_t__) ;
 scalar_t__ build_over_call (struct z_candidate*,int ) ;
 scalar_t__ build_unary_op (int,scalar_t__,int) ;
 scalar_t__ ck_ref_bind ;
 int conversion_obstack ;
 void* conversion_obstack_alloc (int ) ;
 scalar_t__ convert_like (TYPE_2__*,scalar_t__) ;
 scalar_t__ cp_build_binary_op (int,scalar_t__,scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ error_operand_p (scalar_t__) ;
 int gcc_unreachable () ;
 scalar_t__ integer_zero_node ;
 int joust (struct z_candidate*,int ,int) ;
 scalar_t__ lookup_fnfields (scalar_t__,scalar_t__,int) ;
 int lookup_function_nonclass (scalar_t__,scalar_t__,int) ;
 int obstack_free (int *,void*) ;
 int op_error (int,int,scalar_t__,scalar_t__,scalar_t__,char*) ;
 TYPE_3__* operator_name_info ;
 int pedantic ;
 int pedwarn (char*,scalar_t__,int ) ;
 scalar_t__ prep_operand (scalar_t__) ;
 int print_z_candidates (struct z_candidate*) ;
 struct z_candidate* splice_viable (struct z_candidate*,int,int*) ;
 struct z_candidate* tourney (struct z_candidate*) ;
 scalar_t__ tree_cons (scalar_t__,scalar_t__,scalar_t__) ;
 int warning (int ,char*,scalar_t__,scalar_t__) ;

tree
build_new_op (enum tree_code code, int flags, tree arg1, tree arg2, tree arg3,
       bool *overloaded_p)
{
  struct z_candidate *candidates = 0, *cand;
  tree arglist, fnname;
  tree args[3];
  tree result = NULL_TREE;
  bool result_valid_p = 0;
  enum tree_code code2 = NOP_EXPR;
  conversion *conv;
  void *p;
  bool strict_p;
  bool any_viable_p;

  if (error_operand_p (arg1)
      || error_operand_p (arg2)
      || error_operand_p (arg3))
    return error_mark_node;

  if (code == 147)
    {
      code2 = TREE_CODE (arg3);
      arg3 = NULL_TREE;
      fnname = ansi_assopname (code2);
    }
  else
    fnname = ansi_opname (code);

  arg1 = prep_operand (arg1);

  switch (code)
    {
    case 144:
    case 128:
    case 129:
    case 160:

      gcc_unreachable ();

    case 164:
      return build_object_call (arg1, arg2);

    default:
      break;
    }

  arg2 = prep_operand (arg2);
  arg3 = prep_operand (arg3);

  if (code == 161)
    {
      if (arg2 == NULL_TREE
   || TREE_CODE (TREE_TYPE (arg2)) == VOID_TYPE
   || TREE_CODE (TREE_TYPE (arg3)) == VOID_TYPE
   || (! IS_OVERLOAD_TYPE (TREE_TYPE (arg2))
       && ! IS_OVERLOAD_TYPE (TREE_TYPE (arg3))))
 goto builtin;
    }
  else if (! IS_OVERLOAD_TYPE (TREE_TYPE (arg1))
    && (! arg2 || ! IS_OVERLOAD_TYPE (TREE_TYPE (arg2))))
    goto builtin;

  if (code == 140 || code == 141)
    arg2 = integer_zero_node;

  arglist = NULL_TREE;
  if (arg3)
    arglist = tree_cons (NULL_TREE, arg3, arglist);
  if (arg2)
    arglist = tree_cons (NULL_TREE, arg2, arglist);
  arglist = tree_cons (NULL_TREE, arg1, arglist);


  p = conversion_obstack_alloc (0);



  add_candidates (lookup_function_nonclass (fnname, arglist, 1),
    arglist, NULL_TREE, 0, NULL_TREE, NULL_TREE,
    flags, &candidates);

  if (CLASS_TYPE_P (TREE_TYPE (arg1)))
    {
      tree fns;

      fns = lookup_fnfields (TREE_TYPE (arg1), fnname, 1);
      if (fns == error_mark_node)
 {
   result = error_mark_node;
   goto user_defined_result_ready;
 }
      if (fns)
 add_candidates (BASELINK_FUNCTIONS (fns), arglist,
   NULL_TREE, 0,
   BASELINK_BINFO (fns),
   TYPE_BINFO (TREE_TYPE (arg1)),
   flags, &candidates);
    }





  if (code == 161)
    {
      args[0] = arg2;
      args[1] = arg3;
      args[2] = arg1;
    }
  else
    {
      args[0] = arg1;
      args[1] = arg2;
      args[2] = NULL_TREE;
    }

  add_builtin_candidates (&candidates, code, code2, fnname, args, flags);

  switch (code)
    {
    case 162:
    case 170:






      strict_p = 1;
      break;

    default:
      strict_p = pedantic;
      break;
    }

  candidates = splice_viable (candidates, strict_p, &any_viable_p);
  if (!any_viable_p)
    {
      switch (code)
 {
 case 140:
 case 141:


   if (flags & LOOKUP_COMPLAIN)
     pedwarn ("no %<%D(int)%> declared for postfix %qs, "
       "trying prefix operator instead",
       fnname,
       operator_name_info[code].name);
   if (code == 140)
     code = 138;
   else
     code = 139;
   result = build_new_op (code, flags, arg1, NULL_TREE, NULL_TREE,
     overloaded_p);
   break;


 case 170:
 case 162:
 case 163:
   result = NULL_TREE;
   result_valid_p = 1;
   break;

 default:
   if (flags & LOOKUP_COMPLAIN)
     {
       op_error (code, code2, arg1, arg2, arg3, "no match");
       print_z_candidates (candidates);
     }
   result = error_mark_node;
   break;
 }
    }
  else
    {
      cand = tourney (candidates);
      if (cand == 0)
 {
   if (flags & LOOKUP_COMPLAIN)
     {
       op_error (code, code2, arg1, arg2, arg3, "ambiguous overload");
       print_z_candidates (candidates);
     }
   result = error_mark_node;
 }
      else if (TREE_CODE (cand->fn) == FUNCTION_DECL)
 {
   if (overloaded_p)
     *overloaded_p = 1;

   result = build_over_call (cand, LOOKUP_NORMAL);
 }
      else
 {

   if (cand->warnings)
     {
       struct candidate_warning *w;
       for (w = cand->warnings; w; w = w->next)
  joust (cand, w->loser, 1);
     }


   switch (code)
     {
     case 157:
     case 152:
     case 158:
     case 154:
     case 159:
     case 143:
       if (TREE_CODE (TREE_TYPE (arg1)) == ENUMERAL_TYPE
    && TREE_CODE (TREE_TYPE (arg2)) == ENUMERAL_TYPE
    && (TYPE_MAIN_VARIANT (TREE_TYPE (arg1))
        != TYPE_MAIN_VARIANT (TREE_TYPE (arg2))))
  {
    warning (0, "comparison between %q#T and %q#T",
      TREE_TYPE (arg1), TREE_TYPE (arg2));
  }
       break;
     default:
       break;
     }





   conv = cand->convs[0];
   if (conv->kind == ck_ref_bind)
     conv = conv->u.next;
   arg1 = convert_like (conv, arg1);
   if (arg2)
     {
       conv = cand->convs[1];
       if (conv->kind == ck_ref_bind)
  conv = conv->u.next;
       arg2 = convert_like (conv, arg2);
     }
   if (arg3)
     {
       conv = cand->convs[2];
       if (conv->kind == ck_ref_bind)
  conv = conv->u.next;
       arg3 = convert_like (conv, arg3);
     }
 }
    }

 user_defined_result_ready:


  obstack_free (&conversion_obstack, p);

  if (result || result_valid_p)
    return result;

 builtin:
  switch (code)
    {
    case 147:
      return build_modify_expr (arg1, code2, arg2);

    case 155:
      return build_indirect_ref (arg1, "unary *");

    case 142:
    case 149:
    case 146:
    case 135:
    case 157:
    case 152:
    case 158:
    case 154:
    case 159:
    case 143:
    case 151:
    case 148:
    case 153:
    case 136:
    case 134:
    case 168:
    case 167:
    case 165:
    case 133:
    case 131:
      return cp_build_binary_op (code, arg1, arg2);

    case 130:
    case 145:
    case 166:
    case 132:
    case 138:
    case 140:
    case 139:
    case 141:
    case 137:
    case 156:
      return build_unary_op (code, arg1, candidates != 0);

    case 169:
      return build_array_ref (arg1, arg2);

    case 161:
      return build_conditional_expr (arg1, arg2, arg3);

    case 150:
      return build_m_component_ref (build_indirect_ref (arg1, ((void*)0)), arg2);


    case 170:
    case 163:
    case 162:
      return NULL_TREE;

    default:
      gcc_unreachable ();
    }
  return NULL_TREE;
}
