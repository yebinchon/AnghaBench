
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct decl {int dummy; } ;
struct TYPE_8__ {char* name; int insn_num; int * regexp; } ;
struct TYPE_7__ {int pos; int mode; } ;
struct TYPE_6__ {size_t decls_num; int insns_num; TYPE_2__** decls; } ;


 TYPE_4__* DECL_INSN_RESERV (TYPE_2__*) ;
 TYPE_2__* advance_cycle_insn_decl ;
 TYPE_2__* create_node (int) ;
 TYPE_1__* description ;
 int dm_insn_reserv ;
 int no_pos ;

__attribute__((used)) static void
add_advance_cycle_insn_decl (void)
{
  advance_cycle_insn_decl = create_node (sizeof (struct decl));
  advance_cycle_insn_decl->mode = dm_insn_reserv;
  advance_cycle_insn_decl->pos = no_pos;
  DECL_INSN_RESERV (advance_cycle_insn_decl)->regexp = ((void*)0);
  DECL_INSN_RESERV (advance_cycle_insn_decl)->name = "$advance_cycle";
  DECL_INSN_RESERV (advance_cycle_insn_decl)->insn_num
    = description->insns_num;
  description->decls [description->decls_num] = advance_cycle_insn_decl;
  description->decls_num++;
  description->insns_num++;
}
