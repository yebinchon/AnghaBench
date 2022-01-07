
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int is_invisiref_parm (int ) ;

bool
cxx_omp_privatize_by_reference (tree decl)
{
  return is_invisiref_parm (decl);
}
