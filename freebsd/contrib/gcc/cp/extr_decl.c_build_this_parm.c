
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cp_cv_quals ;


 int TREE_VALUE (int ) ;
 int TYPE_ARG_TYPES (int ) ;
 int TYPE_QUAL_CONST ;
 int TYPE_QUAL_RESTRICT ;
 int build_artificial_parm (int ,int ) ;
 int cp_apply_type_quals_to_decl (int,int ) ;
 int cp_build_qualified_type (int ,int) ;
 int this_identifier ;

tree
build_this_parm (tree type, cp_cv_quals quals)
{
  tree this_type;
  tree qual_type;
  tree parm;
  cp_cv_quals this_quals;

  this_type = TREE_VALUE (TYPE_ARG_TYPES (type));


  this_quals = (quals & TYPE_QUAL_RESTRICT) | TYPE_QUAL_CONST;
  qual_type = cp_build_qualified_type (this_type, this_quals);
  parm = build_artificial_parm (this_identifier, qual_type);
  cp_apply_type_quals_to_decl (this_quals, parm);
  return parm;
}
