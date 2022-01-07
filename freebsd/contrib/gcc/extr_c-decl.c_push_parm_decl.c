
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct c_parm {int attrs; int specs; int declarator; } ;


 int NULL_TREE ;
 int PARM ;
 int decl_attributes (int *,int ,int ) ;
 int finish_decl (int ,int ,int ) ;
 int grokdeclarator (int ,int ,int ,int,int *) ;
 int pushdecl (int ) ;

void
push_parm_decl (const struct c_parm *parm)
{
  tree decl;

  decl = grokdeclarator (parm->declarator, parm->specs, PARM, 0, ((void*)0));
  decl_attributes (&decl, parm->attrs, 0);

  decl = pushdecl (decl);

  finish_decl (decl, NULL_TREE, NULL_TREE);
}
