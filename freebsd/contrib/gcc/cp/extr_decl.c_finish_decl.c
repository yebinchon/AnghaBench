
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int cp_finish_decl (int ,int ,int,int ,int ) ;

void
finish_decl (tree decl, tree init, tree asmspec_tree)
{
  cp_finish_decl (decl, init, 0, asmspec_tree, 0);
}
