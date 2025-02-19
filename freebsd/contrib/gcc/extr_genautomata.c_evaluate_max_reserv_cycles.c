
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* decl_t ;
struct TYPE_7__ {int regexp; } ;
struct TYPE_6__ {int max_insn_reserv_cycles; int decls_num; TYPE_1__** decls; } ;
struct TYPE_5__ {scalar_t__ mode; } ;


 TYPE_3__* DECL_INSN_RESERV (TYPE_1__*) ;
 TYPE_2__* description ;
 scalar_t__ dm_insn_reserv ;
 int process_regexp_cycles (int ,int ,int ,int*,int*) ;

__attribute__((used)) static void
evaluate_max_reserv_cycles (void)
{
  int max_insn_cycles_num;
  int min_insn_cycles_num;
  decl_t decl;
  int i;

  description->max_insn_reserv_cycles = 0;
  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      if (decl->mode == dm_insn_reserv)
      {
        process_regexp_cycles (DECL_INSN_RESERV (decl)->regexp, 0, 0,
          &max_insn_cycles_num, &min_insn_cycles_num);
        if (description->max_insn_reserv_cycles < max_insn_cycles_num)
   description->max_insn_reserv_cycles = max_insn_cycles_num;
      }
    }
  description->max_insn_reserv_cycles++;
}
