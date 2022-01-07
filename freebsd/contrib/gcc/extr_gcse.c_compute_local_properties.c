
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct occr {scalar_t__ copied_p; int insn; struct occr* next; scalar_t__ deleted_p; } ;
struct hash_table {unsigned int size; scalar_t__ set_p; struct expr** table; } ;
struct expr {int bitmap_index; scalar_t__ reaching_reg; struct occr* avail_occr; struct occr* antic_occr; int expr; struct expr* next_same_hash; } ;
typedef int sbitmap ;


 size_t BLOCK_NUM (int ) ;
 int SET_BIT (int ,int) ;
 int compute_transp (int ,int,int *,scalar_t__) ;
 int last_basic_block ;
 int sbitmap_vector_ones (int *,int ) ;
 int sbitmap_vector_zero (int *,int ) ;

__attribute__((used)) static void
compute_local_properties (sbitmap *transp, sbitmap *comp, sbitmap *antloc,
     struct hash_table *table)
{
  unsigned int i;


  if (transp)
    {
      if (table->set_p)
 sbitmap_vector_zero (transp, last_basic_block);
      else
 sbitmap_vector_ones (transp, last_basic_block);
    }

  if (comp)
    sbitmap_vector_zero (comp, last_basic_block);
  if (antloc)
    sbitmap_vector_zero (antloc, last_basic_block);

  for (i = 0; i < table->size; i++)
    {
      struct expr *expr;

      for (expr = table->table[i]; expr != ((void*)0); expr = expr->next_same_hash)
 {
   int indx = expr->bitmap_index;
   struct occr *occr;




   if (transp)
     compute_transp (expr->expr, indx, transp, table->set_p);



   if (antloc)
     for (occr = expr->antic_occr; occr != ((void*)0); occr = occr->next)
       {
  SET_BIT (antloc[BLOCK_NUM (occr->insn)], indx);



  occr->deleted_p = 0;
       }



   if (comp)
     for (occr = expr->avail_occr; occr != ((void*)0); occr = occr->next)
       {
  SET_BIT (comp[BLOCK_NUM (occr->insn)], indx);



  occr->copied_p = 0;
       }



   expr->reaching_reg = 0;
 }
    }
}
