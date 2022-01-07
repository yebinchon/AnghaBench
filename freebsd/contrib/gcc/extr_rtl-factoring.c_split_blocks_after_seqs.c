
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_3__* seq_block ;
typedef TYPE_4__* matching_seq ;
struct TYPE_9__ {TYPE_1__* rtl; } ;
struct TYPE_13__ {TYPE_2__ il; } ;
struct TYPE_12__ {int insn; } ;
struct TYPE_11__ {int insn; struct TYPE_11__* next_matching_seq; } ;
struct TYPE_10__ {TYPE_4__* matching_seqs; struct TYPE_10__* next_seq_block; } ;
struct TYPE_8__ {int global_live_at_end; } ;


 TYPE_7__* BLOCK_FOR_INSN (int ) ;
 int IOR_REG_SET (int ,int ) ;
 int block_label_after (int ) ;
 TYPE_6__* pattern_seqs ;
 TYPE_3__* seq_blocks ;

__attribute__((used)) static void
split_blocks_after_seqs (void)
{
  seq_block sb;
  matching_seq mseq;

  block_label_after (pattern_seqs->insn);
  for (sb = seq_blocks; sb; sb = sb->next_seq_block)
    {
      for (mseq = sb->matching_seqs; mseq; mseq = mseq->next_matching_seq)
        {
          block_label_after (mseq->insn);
          IOR_REG_SET (BLOCK_FOR_INSN (pattern_seqs->insn)->
                       il.rtl->global_live_at_end,
                       BLOCK_FOR_INSN (mseq->insn)->il.rtl->global_live_at_end);
        }
    }
}
