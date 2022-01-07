
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wi ;
typedef int tree ;
struct walk_stmt_info {int val_only; int want_locations; int * info; int callback; } ;
typedef int omp_context ;


 int lower_omp_1 ;
 int memset (struct walk_stmt_info*,int ,int) ;
 int walk_stmts (struct walk_stmt_info*,int *) ;

__attribute__((used)) static void
lower_omp (tree *stmt_p, omp_context *ctx)
{
  struct walk_stmt_info wi;

  memset (&wi, 0, sizeof (wi));
  wi.callback = lower_omp_1;
  wi.info = ctx;
  wi.val_only = 1;
  wi.want_locations = 1;

  walk_stmts (&wi, stmt_p);
}
