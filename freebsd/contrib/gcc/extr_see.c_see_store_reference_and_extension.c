
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct see_ref_s {int * merged_def_se_hash; int * unmerged_def_se_hash; int * use_se_hash; int * merged_insn; int * insn; int luid; } ;
typedef int splay_tree_value ;
typedef TYPE_1__* splay_tree_node ;
typedef int * rtx ;
typedef void* htab_t ;
typedef enum extension_type { ____Placeholder_extension_type } extension_type ;
struct TYPE_3__ {scalar_t__ value; } ;


 int BLOCK_NUM (int *) ;
 int DF_INSN_LUID (int ,int *) ;


 int INSERT ;
 int PATTERN (int *) ;

 int df ;
 int eq_descriptor_extension ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int hash_descriptor_extension ;
 void* htab_create (int,int ,int ,int *) ;
 scalar_t__ htab_find_slot (void*,int *,int ) ;
 int last_bb ;
 int rtx_equal_p (int ,int ) ;
 scalar_t__* see_bb_splay_ar ;
 int see_free_ref_s ;
 int splay_tree_compare_ints ;
 int splay_tree_insert (scalar_t__,int ,int ) ;
 TYPE_1__* splay_tree_lookup (scalar_t__,int ) ;
 scalar_t__ splay_tree_new (int ,int *,int ) ;
 struct see_ref_s* xmalloc (int) ;

__attribute__((used)) static bool
see_store_reference_and_extension (rtx ref_insn, rtx se_insn,
       enum extension_type type)
{
  rtx *rtx_slot;
  int curr_bb_num;
  splay_tree_node stn = ((void*)0);
  htab_t se_hash = ((void*)0);
  struct see_ref_s *ref_s = ((void*)0);


  gcc_assert (ref_insn && se_insn);
  if (!see_bb_splay_ar)
    return 0;

  curr_bb_num = BLOCK_NUM (ref_insn);
  gcc_assert (curr_bb_num < last_bb && curr_bb_num >= 0);


  if (!see_bb_splay_ar[curr_bb_num])

    see_bb_splay_ar[curr_bb_num] = splay_tree_new (splay_tree_compare_ints,
          ((void*)0), see_free_ref_s);
  else


    {
      stn = splay_tree_lookup (see_bb_splay_ar[curr_bb_num],
          DF_INSN_LUID (df, ref_insn));
      if (stn)
 switch (type)
   {
   case 130:
     se_hash =
       ((struct see_ref_s *) (stn->value))->unmerged_def_se_hash;
     if (!se_hash)
       {
  se_hash = htab_create (10,
           hash_descriptor_extension,
           eq_descriptor_extension,
           ((void*)0));
  ((struct see_ref_s *) (stn->value))->unmerged_def_se_hash =
    se_hash;
       }
     break;
   case 129:
     se_hash = ((struct see_ref_s *) (stn->value))->merged_def_se_hash;
     if (!se_hash)
       {
  se_hash = htab_create (10,
           hash_descriptor_extension,
           eq_descriptor_extension,
           ((void*)0));
  ((struct see_ref_s *) (stn->value))->merged_def_se_hash =
    se_hash;
       }
     break;
   case 128:
     se_hash = ((struct see_ref_s *) (stn->value))->use_se_hash;
     if (!se_hash)
       {
  se_hash = htab_create (10,
           hash_descriptor_extension,
           eq_descriptor_extension,
           ((void*)0));
  ((struct see_ref_s *) (stn->value))->use_se_hash = se_hash;
       }
     break;
   default:
     gcc_unreachable ();
   }
    }



  if (!stn)
    {
      ref_s = xmalloc (sizeof (struct see_ref_s));
      ref_s->luid = DF_INSN_LUID (df, ref_insn);
      ref_s->insn = ref_insn;
      ref_s->merged_insn = ((void*)0);


      switch (type)
 {
 case 130:
   ref_s->unmerged_def_se_hash = htab_create (10,
           hash_descriptor_extension,
           eq_descriptor_extension,
           ((void*)0));
   se_hash = ref_s->unmerged_def_se_hash;
   ref_s->merged_def_se_hash = ((void*)0);
   ref_s->use_se_hash = ((void*)0);
   break;
 case 129:
   ref_s->merged_def_se_hash = htab_create (10,
         hash_descriptor_extension,
         eq_descriptor_extension,
         ((void*)0));
   se_hash = ref_s->merged_def_se_hash;
   ref_s->unmerged_def_se_hash = ((void*)0);
   ref_s->use_se_hash = ((void*)0);
   break;
 case 128:
   ref_s->use_se_hash = htab_create (10,
         hash_descriptor_extension,
         eq_descriptor_extension,
         ((void*)0));
   se_hash = ref_s->use_se_hash;
   ref_s->unmerged_def_se_hash = ((void*)0);
   ref_s->merged_def_se_hash = ((void*)0);
   break;
 default:
   gcc_unreachable ();
 }
    }



  rtx_slot = (rtx *) htab_find_slot (se_hash, se_insn, INSERT);
  if (*rtx_slot != ((void*)0))
    {
      gcc_assert (type == 128);
      gcc_assert (rtx_equal_p (PATTERN (*rtx_slot), PATTERN (se_insn)));
    }
  else
    *rtx_slot = se_insn;


  if (!stn)
    splay_tree_insert (see_bb_splay_ar[curr_bb_num],
         DF_INSN_LUID (df, ref_insn), (splay_tree_value) ref_s);
  return 1;
}
