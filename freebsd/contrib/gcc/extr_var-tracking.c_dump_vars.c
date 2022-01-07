
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int htab_t ;


 int dump_file ;
 int dump_variable ;
 int fprintf (int ,char*) ;
 scalar_t__ htab_elements (int ) ;
 int htab_traverse (int ,int ,int *) ;

__attribute__((used)) static void
dump_vars (htab_t vars)
{
  if (htab_elements (vars) > 0)
    {
      fprintf (dump_file, "Variables:\n");
      htab_traverse (vars, dump_variable, ((void*)0));
    }
}
