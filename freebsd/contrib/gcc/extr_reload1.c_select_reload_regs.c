
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct insn_chain {struct insn_chain* next_need_reload; } ;


 int find_reload_regs (struct insn_chain*) ;
 struct insn_chain* insns_need_reload ;

__attribute__((used)) static void
select_reload_regs (void)
{
  struct insn_chain *chain;


  for (chain = insns_need_reload; chain != 0;
       chain = chain->next_need_reload)
    find_reload_regs (chain);
}
