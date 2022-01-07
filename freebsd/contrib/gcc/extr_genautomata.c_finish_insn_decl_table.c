
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int htab_delete (int ) ;
 int insn_decl_table ;

__attribute__((used)) static void
finish_insn_decl_table (void)
{
  htab_delete (insn_decl_table);
}
