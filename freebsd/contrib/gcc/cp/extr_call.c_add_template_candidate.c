
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unification_kind_t ;
typedef int tree ;
struct z_candidate {int dummy; } ;


 int NULL_TREE ;
 struct z_candidate* add_template_candidate_real (struct z_candidate**,int ,int ,int ,int ,int ,int ,int ,int,int ,int ) ;

__attribute__((used)) static struct z_candidate *
add_template_candidate (struct z_candidate **candidates, tree tmpl, tree ctype,
   tree explicit_targs, tree arglist, tree return_type,
   tree access_path, tree conversion_path, int flags,
   unification_kind_t strict)
{
  return
    add_template_candidate_real (candidates, tmpl, ctype,
     explicit_targs, arglist, return_type,
     access_path, conversion_path,
     flags, NULL_TREE, strict);
}
