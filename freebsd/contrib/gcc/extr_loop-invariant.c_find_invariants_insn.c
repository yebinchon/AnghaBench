
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int find_invariant_insn (int ,int,int) ;
 int record_uses (int ) ;

__attribute__((used)) static void
find_invariants_insn (rtx insn, bool always_reached, bool always_executed)
{
  find_invariant_insn (insn, always_reached, always_executed);
  record_uses (insn);
}
