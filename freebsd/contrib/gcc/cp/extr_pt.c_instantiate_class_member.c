
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int instantiate_decl (int ,int,int) ;
 int mark_decl_instantiated (int ,int) ;

__attribute__((used)) static void
instantiate_class_member (tree decl, int extern_p)
{
  mark_decl_instantiated (decl, extern_p);
  if (! extern_p)
    instantiate_decl (decl, 1,
                                  1);
}
