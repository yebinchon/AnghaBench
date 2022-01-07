
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct see_register_properties {int bitmap_index; scalar_t__ first_se_after_last_def; struct see_occr* avail_occr; int regno; } ;
struct see_ref_s {void* insn; } ;
struct see_pre_extension_expr {int bitmap_index; scalar_t__ first_se_after_last_def; struct see_occr* avail_occr; int regno; } ;
struct see_occr {int block_num; struct see_occr* next; void* insn; } ;
typedef void* rtx ;
typedef struct see_register_properties* htab_t ;


 int BLOCK_NUM (void*) ;
 int DEF_EXTENSION ;
 scalar_t__ DF_INSN_LUID (int ,void*) ;
 int INSERT ;
 int REGNO (void*) ;
 int RESET_BIT (int ,int) ;
 int SET_BIT (int ,int) ;
 int * ae_kill ;
 int * comp ;
 int df ;
 int gcc_assert (struct see_register_properties*) ;
 scalar_t__ htab_find_slot (struct see_register_properties*,struct see_register_properties*,int ) ;
 struct see_register_properties** see_bb_hash_ar ;
 void* see_get_extension_reg (void*,int) ;
 struct see_register_properties* see_seek_pre_extension_expr (void*,int ) ;
 int * transp ;
 struct see_occr* xmalloc (int) ;

__attribute__((used)) static int
see_analyze_merged_def_local_prop (void **slot, void *b)
{
  rtx def_se = *slot;
  struct see_ref_s *curr_ref_s = (struct see_ref_s *) b;
  rtx ref = curr_ref_s->insn;
  struct see_pre_extension_expr *extension_expr;
  int indx;
  int bb_num = BLOCK_NUM (ref);
  htab_t curr_bb_hash;
  struct see_register_properties *curr_prop, **slot_prop;
  struct see_register_properties temp_prop;
  rtx dest_extension_reg = see_get_extension_reg (def_se, 1);
  struct see_occr *curr_occr = ((void*)0);
  struct see_occr *tmp_occr = ((void*)0);

  extension_expr = see_seek_pre_extension_expr (def_se, DEF_EXTENSION);

  gcc_assert (extension_expr);

  curr_bb_hash = see_bb_hash_ar[bb_num];
  gcc_assert (curr_bb_hash);
  temp_prop.regno = REGNO (dest_extension_reg);
  slot_prop =
    (struct see_register_properties **) htab_find_slot (curr_bb_hash,
       &temp_prop, INSERT);
  curr_prop = *slot_prop;
  gcc_assert (curr_prop);

  indx = extension_expr->bitmap_index;


  RESET_BIT (transp[bb_num], indx);

  RESET_BIT (ae_kill[bb_num], indx);

  if (curr_prop->first_se_after_last_def == DF_INSN_LUID (df, ref))
    {

      SET_BIT (comp[bb_num], indx);

      curr_occr = xmalloc (sizeof (struct see_occr));
      curr_occr->next = ((void*)0);
      curr_occr->insn = def_se;
      curr_occr->block_num = bb_num;
      tmp_occr = extension_expr->avail_occr;
      if (!tmp_occr)
 extension_expr->avail_occr = curr_occr;
      else
 {
   while (tmp_occr->next)
     tmp_occr = tmp_occr->next;
   tmp_occr->next = curr_occr;
 }
    }

  return 1;
}
