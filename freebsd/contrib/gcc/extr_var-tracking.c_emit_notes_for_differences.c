
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_4__ {int vars; } ;
typedef TYPE_1__ dataflow_set ;


 int EMIT_NOTE_BEFORE_INSN ;
 int emit_notes_for_changes (int ,int ) ;
 int emit_notes_for_differences_1 ;
 int emit_notes_for_differences_2 ;
 int htab_traverse (int ,int ,int ) ;

__attribute__((used)) static void
emit_notes_for_differences (rtx insn, dataflow_set *old_set,
       dataflow_set *new_set)
{
  htab_traverse (old_set->vars, emit_notes_for_differences_1, new_set->vars);
  htab_traverse (new_set->vars, emit_notes_for_differences_2, old_set->vars);
  emit_notes_for_changes (insn, EMIT_NOTE_BEFORE_INSN);
}
