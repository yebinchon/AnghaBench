
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* pattern_seq ;
struct TYPE_5__ {int gain; struct TYPE_5__* next_pattern_seq; } ;


 int free_pattern_seq (TYPE_1__*) ;
 TYPE_1__* pattern_seqs ;
 int recompute_gain_for_pattern_seq (TYPE_1__*) ;

__attribute__((used)) static void
recompute_gain (void)
{
  pattern_seq *pseq;
  int maxgain;

  maxgain = 0;
  for (pseq = &pattern_seqs; *pseq;)
    {
      if ((*pseq)->gain <= 0)
        recompute_gain_for_pattern_seq (*pseq);

      if ((*pseq)->gain > 0)
        {
          if ((*pseq)->gain > maxgain)
            {
              pattern_seq temp = *pseq;
              (*pseq) = temp->next_pattern_seq;
              temp->next_pattern_seq = pattern_seqs;
              pattern_seqs = temp;
              maxgain = pattern_seqs->gain;
            }
          else
            {
              pseq = &(*pseq)->next_pattern_seq;
            }
        }
      else
        {
          pattern_seq temp = *pseq;
          *pseq = temp->next_pattern_seq;
          free_pattern_seq (temp);
        }
    }
}
