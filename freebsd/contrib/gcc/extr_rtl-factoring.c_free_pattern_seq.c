
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* pattern_seq ;
typedef TYPE_1__* matching_seq ;
struct TYPE_5__ {struct TYPE_5__* next_matching_seq; struct TYPE_5__* matching_seqs; } ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void
free_pattern_seq (pattern_seq pseq)
{
  while (pseq->matching_seqs)
    {
      matching_seq mseq = pseq->matching_seqs;
      pseq->matching_seqs = mseq->next_matching_seq;
      free (mseq);
    }
  free (pseq);
}
