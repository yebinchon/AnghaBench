
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct z_candidate {int dummy; } ;


 int DEDUCE_CONV ;
 int NULL_TREE ;
 struct z_candidate* add_template_candidate_real (struct z_candidate**,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static struct z_candidate *
add_template_conv_candidate (struct z_candidate **candidates, tree tmpl,
        tree obj, tree arglist, tree return_type,
        tree access_path, tree conversion_path)
{
  return
    add_template_candidate_real (candidates, tmpl, NULL_TREE, NULL_TREE,
     arglist, return_type, access_path,
     conversion_path, 0, obj, DEDUCE_CONV);
}
