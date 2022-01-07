
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,long,long,int ) ;
 int htab_collisions (int ) ;
 scalar_t__ htab_elements (int ) ;
 scalar_t__ htab_size (int ) ;
 int stderr ;
 int value_expr_for_decl ;

__attribute__((used)) static void
print_value_expr_statistics (void)
{
  fprintf (stderr, "DECL_VALUE_EXPR  hash: size %ld, %ld elements, %f collisions\n",
    (long) htab_size (value_expr_for_decl),
    (long) htab_elements (value_expr_for_decl),
    htab_collisions (value_expr_for_decl));
}
