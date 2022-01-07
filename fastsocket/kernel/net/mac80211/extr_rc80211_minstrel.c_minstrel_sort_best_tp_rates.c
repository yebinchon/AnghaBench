
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct minstrel_sta_info {TYPE_1__* r; } ;
struct TYPE_2__ {scalar_t__ cur_tp; } ;


 int MAX_THR_RATES ;
 int memmove (size_t*,size_t*,int) ;

__attribute__((used)) static inline void
minstrel_sort_best_tp_rates(struct minstrel_sta_info *mi, int i, u8 *tp_list)
{
 int j = MAX_THR_RATES;

 while (j > 0 && mi->r[i].cur_tp > mi->r[tp_list[j - 1]].cur_tp)
  j--;
 if (j < MAX_THR_RATES - 1)
  memmove(&tp_list[j + 1], &tp_list[j], MAX_THR_RATES - (j + 1));
 if (j < MAX_THR_RATES)
  tp_list[j] = i;
}
