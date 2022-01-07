
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct cp_binding_level {scalar_t__ names; scalar_t__ kind; struct cp_binding_level* level_chain; } ;
typedef int location_t ;


 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 struct cp_binding_level* current_binding_level ;
 int decl_jump_unsafe (scalar_t__) ;
 int error (char*,...) ;
 int identify_goto (scalar_t__,int const*) ;
 int pedwarn (char*,scalar_t__) ;
 scalar_t__ sk_catch ;
 scalar_t__ sk_omp ;
 scalar_t__ sk_try ;

__attribute__((used)) static bool
check_previous_goto_1 (tree decl, struct cp_binding_level* level, tree names,
         bool exited_omp, const location_t *locus)
{
  struct cp_binding_level *b;
  bool identified = 0, saw_eh = 0, saw_omp = 0;

  if (exited_omp)
    {
      identify_goto (decl, locus);
      error ("  exits OpenMP structured block");
      identified = saw_omp = 1;
    }

  for (b = current_binding_level; b ; b = b->level_chain)
    {
      tree new_decls, old_decls = (b == level ? names : NULL_TREE);

      for (new_decls = b->names; new_decls != old_decls;
    new_decls = TREE_CHAIN (new_decls))
 {
   int problem = decl_jump_unsafe (new_decls);
   if (! problem)
     continue;

   if (!identified)
     {
       identify_goto (decl, locus);
       identified = 1;
     }
   if (problem > 1)
     error ("  crosses initialization of %q+#D", new_decls);
   else
     pedwarn ("  enters scope of non-POD %q+#D", new_decls);
 }

      if (b == level)
 break;
      if ((b->kind == sk_try || b->kind == sk_catch) && !saw_eh)
 {
   if (!identified)
     {
       identify_goto (decl, locus);
       identified = 1;
     }
   if (b->kind == sk_try)
     error ("  enters try block");
   else
     error ("  enters catch block");
   saw_eh = 1;
 }
      if (b->kind == sk_omp && !saw_omp)
 {
   if (!identified)
     {
       identify_goto (decl, locus);
       identified = 1;
     }
   error ("  enters OpenMP structured block");
   saw_omp = 1;
 }
    }

  return !identified;
}
