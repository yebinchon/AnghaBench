
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct du_chain {size_t cl; struct du_chain* next_chain; struct du_chain* next_use; int insn; int * loc; } ;


 size_t GET_MODE (int ) ;
 int INSN_UID (int ) ;
 int REGNO (int ) ;
 int dump_file ;
 int fprintf (int ,char*,...) ;
 int** hard_regno_nregs ;
 char** reg_class_names ;
 char** reg_names ;

__attribute__((used)) static void
dump_def_use_chain (struct du_chain *chains)
{
  while (chains)
    {
      struct du_chain *this = chains;
      int r = REGNO (*this->loc);
      int nregs = hard_regno_nregs[r][GET_MODE (*this->loc)];
      fprintf (dump_file, "Register %s (%d):", reg_names[r], nregs);
      while (this)
 {
   fprintf (dump_file, " %d [%s]", INSN_UID (this->insn),
     reg_class_names[this->cl]);
   this = this->next_use;
 }
      fprintf (dump_file, "\n");
      chains = chains->next_chain;
    }
}
