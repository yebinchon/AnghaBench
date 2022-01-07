
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct see_pre_extension_expr {int bitmap_index; int se_insn; } ;
typedef int * rtx ;
typedef TYPE_1__* edge ;
typedef TYPE_2__* basic_block ;
struct TYPE_12__ {int index; } ;
struct TYPE_11__ {int size; int* elms; } ;
struct TYPE_10__ {int index; } ;
struct TYPE_9__ {int flags; } ;
typedef int SBITMAP_ELT_TYPE ;


 int EDGE_ABNORMAL ;
 TYPE_1__* INDEX_EDGE (int ,int) ;
 TYPE_2__* INDEX_EDGE_PRED_BB (int ,int) ;
 TYPE_6__* INDEX_EDGE_SUCC_BB (int ,int) ;
 scalar_t__ INSN_P (int *) ;
 int INSN_UID (int *) ;
 int NUM_EDGES (int ) ;
 int PATTERN (int ) ;
 scalar_t__ SBITMAP_ELT_BITS ;
 scalar_t__ dump_file ;
 int edge_list ;
 int emit_insn (int ) ;
 int end_sequence () ;
 int fprintf (scalar_t__,char*,int,...) ;
 int gcc_assert (int) ;
 int * get_insns () ;
 size_t htab_elements (int ) ;
 int * insert_insn_end_bb_new (int *,TYPE_2__*) ;
 int insert_insn_on_edge (int *,TYPE_1__*) ;
 TYPE_3__** pre_insert_map ;
 int see_pre_extension_hash ;
 int start_sequence () ;

__attribute__((used)) static bool
see_pre_insert_extensions (struct see_pre_extension_expr **index_map)
{
  int num_edges = NUM_EDGES (edge_list);
  int set_size = pre_insert_map[0]->size;
  size_t pre_extension_num = htab_elements (see_pre_extension_hash);

  int did_insert = 0;
  int e;
  int i;
  int j;

  for (e = 0; e < num_edges; e++)
    {
      int indx;
      basic_block bb = INDEX_EDGE_PRED_BB (edge_list, e);

      for (i = indx = 0; i < set_size; i++, indx += SBITMAP_ELT_BITS)
 {
   SBITMAP_ELT_TYPE insert = pre_insert_map[e]->elms[i];

   for (j = indx; insert && j < (int) pre_extension_num;
        j++, insert >>= 1)
     if (insert & 1)
       {
  struct see_pre_extension_expr *expr = index_map[j];
  int idx = expr->bitmap_index;
  rtx se_insn = ((void*)0);
  edge eg = INDEX_EDGE (edge_list, e);

  start_sequence ();
  emit_insn (PATTERN (expr->se_insn));
  se_insn = get_insns ();
  end_sequence ();

  if (eg->flags & EDGE_ABNORMAL)
    {
      rtx new_insn = ((void*)0);

      new_insn = insert_insn_end_bb_new (se_insn, bb);
      gcc_assert (new_insn && INSN_P (new_insn));

      if (dump_file)
        {
   fprintf (dump_file,
     "PRE: end of bb %d, insn %d, ",
     bb->index, INSN_UID (new_insn));
   fprintf (dump_file,
     "inserting expression %d\n", idx);
        }
    }
  else
    {
      insert_insn_on_edge (se_insn, eg);

      if (dump_file)
        {
   fprintf (dump_file, "PRE: edge (%d,%d), ",
     bb->index,
     INDEX_EDGE_SUCC_BB (edge_list, e)->index);
   fprintf (dump_file, "inserting expression %d\n", idx);
        }
    }
  did_insert = 1;
       }
 }
    }
  return did_insert;
}
