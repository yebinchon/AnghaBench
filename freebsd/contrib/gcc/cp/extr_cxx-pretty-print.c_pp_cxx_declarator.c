
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cxx_pretty_printer ;


 int pp_cxx_direct_declarator (int *,int ) ;

__attribute__((used)) static void
pp_cxx_declarator (cxx_pretty_printer *pp, tree t)
{
  pp_cxx_direct_declarator (pp, t);
}
