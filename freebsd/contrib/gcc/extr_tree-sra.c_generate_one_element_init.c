
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int gimplify_and_add (int ,int *) ;
 int sra_build_assignment (int ,int ) ;

__attribute__((used)) static void
generate_one_element_init (tree var, tree init, tree *list_p)
{

  tree stmt = sra_build_assignment (var, init);
  gimplify_and_add (stmt, list_p);
}
