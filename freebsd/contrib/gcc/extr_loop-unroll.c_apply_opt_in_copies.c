
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct var_to_expand {scalar_t__ insn; } ;
struct opt_info {unsigned int first_new_block; scalar_t__ insns_to_split; int * loop_exit; scalar_t__ insns_with_var_to_expand; int * loop_preheader; } ;
struct iv_to_split {scalar_t__ insn; } ;
typedef scalar_t__ rtx ;
typedef TYPE_1__* basic_block ;
struct TYPE_9__ {scalar_t__ aux; } ;


 TYPE_1__* BASIC_BLOCK (unsigned int) ;
 scalar_t__ BB_END (TYPE_1__*) ;
 scalar_t__ BB_HEAD (TYPE_1__*) ;
 scalar_t__ GET_CODE (int ) ;
 int INSN_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 int PATTERN (scalar_t__) ;
 int allocate_basic_variable ;
 int combine_var_copies_in_loop_exit ;
 unsigned int determine_split_iv_delta (size_t,unsigned int,int) ;
 int expand_var_during_unrolling (struct var_to_expand*,scalar_t__) ;
 int gcc_assert (int) ;
 TYPE_1__* get_bb_copy (TYPE_1__*) ;
 TYPE_1__* get_bb_original (TYPE_1__*) ;
 struct var_to_expand* htab_find (scalar_t__,struct var_to_expand*) ;
 int htab_traverse (scalar_t__,int ,int *) ;
 int insert_base_initialization (struct var_to_expand*,scalar_t__) ;
 int insert_var_expansion_initialization ;
 scalar_t__ last_basic_block ;
 int split_iv (struct var_to_expand*,scalar_t__,unsigned int) ;

__attribute__((used)) static void
apply_opt_in_copies (struct opt_info *opt_info,
                     unsigned n_copies, bool unrolling,
                     bool rewrite_original_loop)
{
  unsigned i, delta;
  basic_block bb, orig_bb;
  rtx insn, orig_insn, next;
  struct iv_to_split ivts_templ, *ivts;
  struct var_to_expand ve_templ, *ves;



  gcc_assert (!unrolling || rewrite_original_loop);


  if (opt_info->insns_to_split)
    htab_traverse (opt_info->insns_to_split, allocate_basic_variable, ((void*)0));

  for (i = opt_info->first_new_block; i < (unsigned) last_basic_block; i++)
    {
      bb = BASIC_BLOCK (i);
      orig_bb = get_bb_original (bb);



      delta = determine_split_iv_delta ((size_t)bb->aux, n_copies,
     unrolling);
      bb->aux = 0;
      orig_insn = BB_HEAD (orig_bb);
      for (insn = BB_HEAD (bb); insn != NEXT_INSN (BB_END (bb)); insn = next)
        {
          next = NEXT_INSN (insn);
          if (!INSN_P (insn))
            continue;

          while (!INSN_P (orig_insn))
            orig_insn = NEXT_INSN (orig_insn);

          ivts_templ.insn = orig_insn;
          ve_templ.insn = orig_insn;


          if (opt_info->insns_to_split)
            {
              ivts = htab_find (opt_info->insns_to_split, &ivts_templ);

              if (ivts)
                {
    gcc_assert (GET_CODE (PATTERN (insn))
         == GET_CODE (PATTERN (orig_insn)));

                  if (!delta)
                    insert_base_initialization (ivts, insn);
                  split_iv (ivts, insn, delta);
                }
            }

          if (unrolling && opt_info->insns_with_var_to_expand)
            {
              ves = htab_find (opt_info->insns_with_var_to_expand, &ve_templ);
              if (ves)
                {
    gcc_assert (GET_CODE (PATTERN (insn))
         == GET_CODE (PATTERN (orig_insn)));
                  expand_var_during_unrolling (ves, insn);
                }
            }
          orig_insn = NEXT_INSN (orig_insn);
        }
    }

  if (!rewrite_original_loop)
    return;



  if (opt_info->insns_with_var_to_expand)
    {
      htab_traverse (opt_info->insns_with_var_to_expand,
                     insert_var_expansion_initialization,
                     opt_info->loop_preheader);
      htab_traverse (opt_info->insns_with_var_to_expand,
                     combine_var_copies_in_loop_exit,
                     opt_info->loop_exit);
    }




  for (i = opt_info->first_new_block; i < (unsigned) last_basic_block; i++)
    {
      bb = BASIC_BLOCK (i);
      orig_bb = get_bb_original (bb);
      if (get_bb_copy (orig_bb) != bb)
 continue;

      delta = determine_split_iv_delta (0, n_copies, unrolling);
      for (orig_insn = BB_HEAD (orig_bb);
           orig_insn != NEXT_INSN (BB_END (bb));
           orig_insn = next)
        {
          next = NEXT_INSN (orig_insn);

          if (!INSN_P (orig_insn))
      continue;

          ivts_templ.insn = orig_insn;
          if (opt_info->insns_to_split)
            {
              ivts = htab_find (opt_info->insns_to_split, &ivts_templ);
              if (ivts)
                {
                  if (!delta)
                    insert_base_initialization (ivts, orig_insn);
                  split_iv (ivts, orig_insn, delta);
                  continue;
                }
            }

        }
    }
}
