
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hash_elem_def {int insn; int hash; } ;
struct hash_bucket_def {int insn; int hash; } ;
typedef int rtx ;
typedef TYPE_1__* p_hash_elem ;
typedef TYPE_2__* p_hash_bucket ;
struct TYPE_4__ {int seq_candidates; } ;
struct TYPE_3__ {int length; } ;


 int COSTS_N_INSNS (int) ;
 int compute_hash (int ) ;
 int get_attr_length (int ) ;
 int hash_buckets ;
 void* htab_find (int ,struct hash_elem_def*) ;

__attribute__((used)) static int
compute_rtx_cost (rtx insn)
{
  struct hash_bucket_def tmp_bucket;
  p_hash_bucket bucket;
  struct hash_elem_def tmp_elem;
  p_hash_elem elem = ((void*)0);
  int cost = -1;


  tmp_bucket.hash = compute_hash (insn);


  bucket = htab_find (hash_buckets, &tmp_bucket);

  if (bucket)
  {
    tmp_elem.insn = insn;


    elem = htab_find (bucket->seq_candidates, &tmp_elem);


    if (elem)
      cost = elem->length;
  }


  if (cost == -1)
  {
    cost = get_attr_length (insn);


    if (elem)
      elem->length = cost;
  }



  return cost != 0 ? cost : COSTS_N_INSNS (1);
}
