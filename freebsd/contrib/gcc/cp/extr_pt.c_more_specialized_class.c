
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int CLASSTYPE_TI_ARGS (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int TREE_VALUE (scalar_t__) ;
 scalar_t__ get_class_bindings (int ,int ,int ) ;
 int processing_template_decl ;

__attribute__((used)) static int
more_specialized_class (tree pat1, tree pat2)
{
  tree targs;
  tree tmpl1, tmpl2;
  int winner = 0;

  tmpl1 = TREE_TYPE (pat1);
  tmpl2 = TREE_TYPE (pat2);





  ++processing_template_decl;
  targs = get_class_bindings (TREE_VALUE (pat1),
         CLASSTYPE_TI_ARGS (tmpl1),
         CLASSTYPE_TI_ARGS (tmpl2));
  if (targs)
    --winner;

  targs = get_class_bindings (TREE_VALUE (pat2),
         CLASSTYPE_TI_ARGS (tmpl2),
         CLASSTYPE_TI_ARGS (tmpl1));
  if (targs)
    ++winner;
  --processing_template_decl;

  return winner;
}
