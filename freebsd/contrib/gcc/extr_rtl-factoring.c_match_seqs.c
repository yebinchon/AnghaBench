
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct pattern_seq_def {int dummy; } ;
struct matching_seq_def {int dummy; } ;
typedef TYPE_1__* pattern_seq ;
typedef TYPE_2__* p_hash_elem ;
typedef TYPE_3__* matching_seq ;
struct TYPE_9__ {scalar_t__ idx; scalar_t__ insn; int matching_length; int cost; struct TYPE_9__* next_matching_seq; scalar_t__ abstracted_length; } ;
struct TYPE_8__ {scalar_t__ insn; scalar_t__ idx; } ;
struct TYPE_7__ {scalar_t__ insn; scalar_t__ idx; TYPE_3__* matching_seqs; struct TYPE_7__* next_pattern_seq; int link_reg; scalar_t__ cost; scalar_t__ abstracted_length; scalar_t__ gain; } ;


 int NULL_RTX ;
 int matching_length (scalar_t__,scalar_t__,int*,int*) ;
 TYPE_1__* pattern_seqs ;
 int seq_call_cost ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
match_seqs (p_hash_elem e0, p_hash_elem e1)
{
  int len;
  int cost;
  matching_seq mseq, p_prev, p_next;



  matching_length (e0->insn, e1->insn, &len, &cost);
  if (cost <= seq_call_cost)
    return;




  if (!pattern_seqs || pattern_seqs->insn != e0->insn)
    {
      pattern_seq pseq =
        (pattern_seq) xmalloc (sizeof (struct pattern_seq_def));
      pseq->insn = e0->insn;
      pseq->idx = e0->idx;
      pseq->gain = 0;
      pseq->abstracted_length = 0;
      pseq->cost = 0;
      pseq->link_reg = NULL_RTX;
      pseq->matching_seqs = ((void*)0);
      pseq->next_pattern_seq = pattern_seqs;
      pattern_seqs = pseq;
    }


  p_prev = ((void*)0);
  p_next = pattern_seqs->matching_seqs;
  while (p_next && p_next->idx < e1->idx)
    {
      p_prev = p_next;
      p_next = p_next->next_matching_seq;
    }



  mseq = (matching_seq) xmalloc (sizeof (struct matching_seq_def));
  mseq->insn = e1->insn;
  mseq->idx = e1->idx;
  mseq->matching_length = len;
  mseq->abstracted_length = 0;
  mseq->cost = cost;

  if (p_prev == ((void*)0))
    pattern_seqs->matching_seqs = mseq;
  else
    p_prev->next_matching_seq = mseq;
  mseq->next_matching_seq = p_next;
}
