
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct insn_reserv {int bypassed; struct insn_reserv* next; int insn_num; int condexp; int default_latency; int name; } ;
typedef int rtx ;


 int DEF_ATTR_STRING (int ) ;
 int XEXP (int ,int) ;
 int XINT (int ,int) ;
 int XSTR (int ,int ) ;
 int check_attr_test (int ,int ,int ) ;
 struct insn_reserv** last_insn_reserv_p ;
 int n_insn_reservs ;
 struct insn_reserv* oballoc (int) ;

__attribute__((used)) static void
gen_insn_reserv (rtx def)
{
  struct insn_reserv *decl = oballoc (sizeof (struct insn_reserv));

  decl->name = DEF_ATTR_STRING (XSTR (def, 0));
  decl->default_latency = XINT (def, 1);
  decl->condexp = check_attr_test (XEXP (def, 2), 0, 0);
  decl->insn_num = n_insn_reservs;
  decl->bypassed = 0;
  decl->next = 0;

  *last_insn_reserv_p = decl;
  last_insn_reserv_p = &decl->next;
  n_insn_reservs++;
}
