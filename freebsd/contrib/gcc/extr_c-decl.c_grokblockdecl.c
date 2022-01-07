
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct c_declspecs {int attrs; } ;
struct c_declarator {int dummy; } ;


 int BLOCKDEF ;
 int NULL_TREE ;
 int decl_attributes (int *,int ,int ) ;
 int grokdeclarator (struct c_declarator*,struct c_declspecs*,int ,int,int *) ;

tree
grokblockdecl (struct c_declspecs *specs, struct c_declarator *declarator)
{
  tree decl;
  tree attrs = specs->attrs;

  specs->attrs = NULL_TREE;

  decl = grokdeclarator (declarator, specs, BLOCKDEF,
     0, ((void*)0));


  decl_attributes (&decl, attrs, 0);

  return decl;
}
