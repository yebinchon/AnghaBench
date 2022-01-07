
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int c_pretty_printer ;


 int TREE_TYPE (int ) ;
 int TYPE_P (int ) ;
 int TYPE_QUALS (int ) ;
 int TYPE_QUAL_CONST ;
 int TYPE_QUAL_RESTRICT ;
 int TYPE_QUAL_VOLATILE ;
 scalar_t__ flag_isoc99 ;
 int pp_c_cv_qualifier (int *,char*) ;

void
pp_c_type_qualifier_list (c_pretty_printer *pp, tree t)
{
   int qualifiers;

  if (!TYPE_P (t))
    t = TREE_TYPE (t);

  qualifiers = TYPE_QUALS (t);
  if (qualifiers & TYPE_QUAL_CONST)
    pp_c_cv_qualifier (pp, "const");
  if (qualifiers & TYPE_QUAL_VOLATILE)
    pp_c_cv_qualifier (pp, "volatile");
  if (qualifiers & TYPE_QUAL_RESTRICT)
    pp_c_cv_qualifier (pp, flag_isoc99 ? "restrict" : "__restrict__");
}
