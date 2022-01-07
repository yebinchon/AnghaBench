
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int cp_declarator ;
struct TYPE_4__ {scalar_t__ attributes; } ;
typedef TYPE_1__ cp_decl_specifier_seq ;


 int BLOCKDEF ;
 scalar_t__ NULL_TREE ;
 int cplus_decl_attributes (scalar_t__*,scalar_t__,int ) ;
 scalar_t__ grokdeclarator (int const*,TYPE_1__*,int ,int ,scalar_t__*) ;

tree
grokblockdecl (cp_decl_specifier_seq *type_specifiers,
    const cp_declarator *declarator)
{
  tree decl;
  tree attrs = type_specifiers->attributes;

  type_specifiers->attributes = NULL_TREE;

  decl = grokdeclarator (declarator, type_specifiers, BLOCKDEF, 0, &attrs);
  if (attrs)
      cplus_decl_attributes (&decl, attrs, 0);
  return decl;
}
