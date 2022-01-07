
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug_expr_for_decl ;
 int fprintf (int ,char*,long,long,int ) ;
 int htab_collisions (int ) ;
 scalar_t__ htab_elements (int ) ;
 scalar_t__ htab_size (int ) ;
 int stderr ;

__attribute__((used)) static void
print_debug_expr_statistics (void)
{
  fprintf (stderr, "DECL_DEBUG_EXPR  hash: size %ld, %ld elements, %f collisions\n",
    (long) htab_size (debug_expr_for_decl),
    (long) htab_elements (debug_expr_for_decl),
    htab_collisions (debug_expr_for_decl));
}
