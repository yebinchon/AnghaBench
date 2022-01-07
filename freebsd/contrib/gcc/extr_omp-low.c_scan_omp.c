
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wi ;
typedef int tree ;
struct walk_stmt_info {int want_locations; int want_bind_expr; int * info; int callback; } ;
typedef int omp_context ;
typedef int location_t ;


 int input_location ;
 int memset (struct walk_stmt_info*,int ,int) ;
 int scan_omp_1 ;
 int walk_stmts (struct walk_stmt_info*,int *) ;

__attribute__((used)) static void
scan_omp (tree *stmt_p, omp_context *ctx)
{
  location_t saved_location;
  struct walk_stmt_info wi;

  memset (&wi, 0, sizeof (wi));
  wi.callback = scan_omp_1;
  wi.info = ctx;
  wi.want_bind_expr = (ctx != ((void*)0));
  wi.want_locations = 1;

  saved_location = input_location;
  walk_stmts (&wi, stmt_p);
  input_location = saved_location;
}
