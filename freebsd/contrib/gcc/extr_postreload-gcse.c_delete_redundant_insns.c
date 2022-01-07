
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int delete_redundant_insns_1 ;
 scalar_t__ dump_file ;
 int expr_table ;
 int fprintf (scalar_t__,char*) ;
 int htab_traverse (int ,int ,int *) ;

__attribute__((used)) static void
delete_redundant_insns (void)
{
  htab_traverse (expr_table, delete_redundant_insns_1, ((void*)0));
  if (dump_file)
    fprintf (dump_file, "\n");
}
