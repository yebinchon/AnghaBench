
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FATAL_EXIT_CODE ;
 int current_aux_info_lineno ;
 int exit (int ) ;
 int notice (char*,int ,int ) ;
 int pname ;

__attribute__((used)) static void
aux_info_corrupted (void)
{
  notice ("\n%s: fatal error: aux info file corrupted at line %d\n",
   pname, current_aux_info_lineno);
  exit (FATAL_EXIT_CODE);
}
