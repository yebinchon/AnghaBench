
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int rtx ;
typedef enum emit_note_where { ____Placeholder_emit_note_where } emit_note_where ;
struct TYPE_3__ {int where; int insn; } ;
typedef TYPE_1__ emit_note_data ;


 int changed_variables ;
 int emit_note_insn_var_location ;
 int htab_traverse (int ,int ,TYPE_1__*) ;

__attribute__((used)) static void
emit_notes_for_changes (rtx insn, enum emit_note_where where)
{
  emit_note_data data;

  data.insn = insn;
  data.where = where;
  htab_traverse (changed_variables, emit_note_insn_var_location, &data);
}
