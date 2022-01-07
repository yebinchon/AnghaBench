
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct btr_user_s {int dummy; } ;
typedef void* rtx ;
typedef TYPE_1__* btr_user ;
typedef TYPE_2__* basic_block ;
struct TYPE_7__ {int index; } ;
struct TYPE_6__ {int luid; int first_reaching_def; void* use; scalar_t__ n_reaching_defs; int * next; scalar_t__ other_use_this_block; void* insn; TYPE_2__* bb; } ;


 int INSN_UID (void*) ;
 void* NULL_RTX ;
 int PATTERN (void*) ;
 int REGNO (void*) ;
 int btr_referenced_p (int ,void**) ;
 scalar_t__ dump_file ;
 void** find_btr_use (int ) ;
 int fprintf (scalar_t__,char*,int,...) ;
 int migrate_btrl_obstack ;
 TYPE_1__* obstack_alloc (int *,int) ;

__attribute__((used)) static btr_user
new_btr_user (basic_block bb, int insn_luid, rtx insn)
{




  rtx *usep = find_btr_use (PATTERN (insn));
  rtx use;
  btr_user user = ((void*)0);

  if (usep)
    {
      int unambiguous_single_use;




      unambiguous_single_use = !btr_referenced_p (PATTERN (insn), usep);
      if (!unambiguous_single_use)
 usep = ((void*)0);
    }
  use = usep ? *usep : NULL_RTX;
  user = obstack_alloc (&migrate_btrl_obstack, sizeof (struct btr_user_s));
  user->bb = bb;
  user->luid = insn_luid;
  user->insn = insn;
  user->use = use;
  user->other_use_this_block = 0;
  user->next = ((void*)0);
  user->n_reaching_defs = 0;
  user->first_reaching_def = -1;

  if (dump_file)
    {
      fprintf (dump_file, "Uses target reg: { bb %d, insn %d }",
        bb->index, INSN_UID (insn));

      if (user->use)
 fprintf (dump_file, ": unambiguous use of reg %d\n",
   REGNO (user->use));
    }

  return user;
}
