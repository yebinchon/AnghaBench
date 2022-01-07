
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_5__ {scalar_t__ is_nested; } ;
typedef TYPE_1__ omp_context ;


 int MODIFY_EXPR ;
 scalar_t__ OMP_CLAUSE_CHAIN (scalar_t__) ;
 int OMP_CLAUSE_CODE (scalar_t__) ;

 scalar_t__ OMP_CLAUSE_DECL (scalar_t__) ;


 int OMP_CLAUSE_LASTPRIVATE_FIRSTPRIVATE (scalar_t__) ;

 scalar_t__ build2 (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ build_fold_addr_expr (scalar_t__) ;
 scalar_t__ build_sender_ref (scalar_t__,TYPE_1__*) ;
 int gcc_unreachable () ;
 int gimplify_and_add (scalar_t__,scalar_t__*) ;
 scalar_t__ is_global_var (scalar_t__) ;
 int is_reference (scalar_t__) ;
 scalar_t__ is_variable_sized (scalar_t__) ;
 scalar_t__ lookup_decl_in_outer_ctx (scalar_t__,TYPE_1__*) ;
 int use_pointer_for_field (scalar_t__,int) ;
 int void_type_node ;

__attribute__((used)) static void
lower_send_clauses (tree clauses, tree *ilist, tree *olist, omp_context *ctx)
{
  tree c;

  for (c = clauses; c ; c = OMP_CLAUSE_CHAIN (c))
    {
      tree val, ref, x, var;
      bool by_ref, do_in = 0, do_out = 0;

      switch (OMP_CLAUSE_CODE (c))
 {
 case 130:
 case 131:
 case 129:
 case 128:
   break;
 default:
   continue;
 }

      var = val = OMP_CLAUSE_DECL (c);
      if (ctx->is_nested)
 var = lookup_decl_in_outer_ctx (val, ctx);

      if (OMP_CLAUSE_CODE (c) != 131
   && is_global_var (var))
 continue;
      if (is_variable_sized (val))
 continue;
      by_ref = use_pointer_for_field (val, 0);

      switch (OMP_CLAUSE_CODE (c))
 {
 case 130:
 case 131:
   do_in = 1;
   break;

 case 129:
   if (by_ref || is_reference (val))
     {
       if (OMP_CLAUSE_LASTPRIVATE_FIRSTPRIVATE (c))
  continue;
       do_in = 1;
     }
   else
     do_out = 1;
   break;

 case 128:
   do_in = 1;
   do_out = !(by_ref || is_reference (val));
   break;

 default:
   gcc_unreachable ();
 }

      if (do_in)
 {
   ref = build_sender_ref (val, ctx);
   x = by_ref ? build_fold_addr_expr (var) : var;
   x = build2 (MODIFY_EXPR, void_type_node, ref, x);
   gimplify_and_add (x, ilist);
 }

      if (do_out)
 {
   ref = build_sender_ref (val, ctx);
   x = build2 (MODIFY_EXPR, void_type_node, var, ref);
   gimplify_and_add (x, olist);
 }
    }
}
