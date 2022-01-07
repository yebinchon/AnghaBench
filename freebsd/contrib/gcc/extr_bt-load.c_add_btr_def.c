
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct btr_def_s {int dummy; } ;
typedef int rtx ;
typedef int fibheap_t ;
typedef int btr_def_group ;
typedef TYPE_1__* btr_def ;
typedef TYPE_2__* basic_block ;
struct TYPE_10__ {int index; } ;
struct TYPE_9__ {int luid; unsigned int btr; int cost; int other_btr_uses_before_def; scalar_t__ group; int * live_range; int * uses; int * next_this_group; int * next_this_bb; scalar_t__ other_btr_uses_after_use; scalar_t__ has_ambiguous_use; int insn; TYPE_2__* bb; } ;


 int INSN_UID (int ) ;
 int basic_block_freq (TYPE_2__*) ;
 scalar_t__ dump_file ;
 int fibheap_insert (int ,int,TYPE_1__*) ;
 int find_btr_def_group (int *,TYPE_1__*) ;
 int fprintf (scalar_t__,char*,unsigned int,int,int,char*,int) ;
 int migrate_btrl_obstack ;
 TYPE_1__* obstack_alloc (int *,int) ;

__attribute__((used)) static btr_def
add_btr_def (fibheap_t all_btr_defs, basic_block bb, int insn_luid, rtx insn,
      unsigned int dest_reg, int other_btr_uses_before_def,
      btr_def_group *all_btr_def_groups)
{
  btr_def this
    = obstack_alloc (&migrate_btrl_obstack, sizeof (struct btr_def_s));
  this->bb = bb;
  this->luid = insn_luid;
  this->insn = insn;
  this->btr = dest_reg;
  this->cost = basic_block_freq (bb);
  this->has_ambiguous_use = 0;
  this->other_btr_uses_before_def = other_btr_uses_before_def;
  this->other_btr_uses_after_use = 0;
  this->next_this_bb = ((void*)0);
  this->next_this_group = ((void*)0);
  this->uses = ((void*)0);
  this->live_range = ((void*)0);
  find_btr_def_group (all_btr_def_groups, this);

  fibheap_insert (all_btr_defs, -this->cost, this);

  if (dump_file)
    fprintf (dump_file,
      "Found target reg definition: sets %u { bb %d, insn %d }%s priority %d\n",
      dest_reg, bb->index, INSN_UID (insn), (this->group ? "" : ":not const"),
      this->cost);

  return this;
}
