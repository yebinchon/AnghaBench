
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* seq_block ;
typedef TYPE_1__* matching_seq ;
struct TYPE_5__ {struct TYPE_5__* next_seq_block; struct TYPE_5__* next_matching_seq; struct TYPE_5__* matching_seqs; } ;


 int free (TYPE_1__*) ;
 TYPE_1__* seq_blocks ;

__attribute__((used)) static void
free_seq_blocks (void)
{
  while (seq_blocks)
    {
      seq_block sb = seq_blocks;
      while (sb->matching_seqs)
        {
          matching_seq mseq = sb->matching_seqs;
          sb->matching_seqs = mseq->next_matching_seq;
          free (mseq);
        }
      seq_blocks = sb->next_seq_block;
      free (sb);
    }
}
