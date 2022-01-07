
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpp_reader ;


 int cpp_forall_identifiers (int *,int ,int *) ;
 int undefine_macros ;

void
cpp_undef_all (cpp_reader *pfile)
{
  cpp_forall_identifiers (pfile, undefine_macros, ((void*)0));
}
