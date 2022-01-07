
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* btr_user ;
typedef TYPE_3__* btr_def ;
typedef int * bitmap ;
struct TYPE_9__ {int btr; int other_btr_uses_after_use; int insn; int * live_range; TYPE_2__* uses; int bb; int has_ambiguous_use; struct TYPE_9__* next_this_group; TYPE_1__* group; } ;
struct TYPE_8__ {scalar_t__ insn; int use; struct TYPE_8__* next; int bb; } ;
struct TYPE_7__ {TYPE_3__* members; } ;
typedef int HARD_REG_SET ;


 scalar_t__ BB_END (int ) ;
 int * BITMAP_ALLOC (int *) ;
 int BITMAP_FREE (int *) ;
 int CDI_DOMINATORS ;
 int COPY_HARD_REG_SET (int ,int ) ;
 int INSN_UID (int ) ;
 int JUMP_P (scalar_t__) ;
 int REGNO (int ) ;
 int REG_DEAD ;
 int augment_live_range (int *,int *,int ,int ,int) ;
 int bitmap_copy (int *,int *) ;
 int btr_def_live_range (TYPE_3__*,int *) ;
 int choose_btr (int ) ;
 int clear_btr_from_live_range (TYPE_3__*) ;
 int delete_insn (int ) ;
 scalar_t__ dominated_by_p (int ,int ,int ) ;
 scalar_t__ dump_file ;
 int find_regno_note (scalar_t__,int ,int ) ;
 scalar_t__ flag_btr_bb_exclusive ;
 int fprintf (scalar_t__,char*,int,int) ;
 int remove_note (scalar_t__,int ) ;

__attribute__((used)) static void
combine_btr_defs (btr_def def, HARD_REG_SET *btrs_live_in_range)
{
  btr_def other_def;

  for (other_def = def->group->members;
       other_def != ((void*)0);
       other_def = other_def->next_this_group)
    {
      if (other_def != def
   && other_def->uses != ((void*)0)
   && ! other_def->has_ambiguous_use
   && dominated_by_p (CDI_DOMINATORS, other_def->bb, def->bb))
 {




   int btr;
   HARD_REG_SET combined_btrs_live;
   bitmap combined_live_range = BITMAP_ALLOC (((void*)0));
   btr_user user;

   if (other_def->live_range == ((void*)0))
     {
       HARD_REG_SET dummy_btrs_live_in_range;
       btr_def_live_range (other_def, &dummy_btrs_live_in_range);
     }
   COPY_HARD_REG_SET (combined_btrs_live, *btrs_live_in_range);
   bitmap_copy (combined_live_range, def->live_range);

   for (user = other_def->uses; user != ((void*)0); user = user->next)
     augment_live_range (combined_live_range, &combined_btrs_live,
    def->bb, user->bb,
    (flag_btr_bb_exclusive
     || user->insn != BB_END (def->bb)
     || !JUMP_P (user->insn)));

   btr = choose_btr (combined_btrs_live);
   if (btr != -1)
     {

       if (dump_file)
  fprintf (dump_file,
    "Combining def in insn %d with def in insn %d\n",
    INSN_UID (other_def->insn), INSN_UID (def->insn));

       def->btr = btr;
       user = other_def->uses;
       while (user != ((void*)0))
  {
    btr_user next = user->next;

    user->next = def->uses;
    def->uses = user;
    user = next;
  }






       for (user = def->uses; user != ((void*)0); user = user->next)
  remove_note (user->insn,
        find_regno_note (user->insn, REG_DEAD,
           REGNO (user->use)));
       clear_btr_from_live_range (other_def);
       other_def->uses = ((void*)0);
       bitmap_copy (def->live_range, combined_live_range);
       if (other_def->btr == btr && other_def->other_btr_uses_after_use)
  def->other_btr_uses_after_use = 1;
       COPY_HARD_REG_SET (*btrs_live_in_range, combined_btrs_live);


       delete_insn (other_def->insn);

     }
   BITMAP_FREE (combined_live_range);
 }
    }
}
