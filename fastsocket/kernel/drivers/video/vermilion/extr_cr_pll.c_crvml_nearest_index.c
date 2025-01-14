
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vml_sys {int dummy; } ;


 int* crvml_clocks ;
 int crvml_num_clocks ;

__attribute__((used)) static int crvml_nearest_index(const struct vml_sys *sys, int clock)
{
 int i;
 int cur_index = 0;
 int cur_diff;
 int diff;

 cur_diff = clock - crvml_clocks[0];
 cur_diff = (cur_diff < 0) ? -cur_diff : cur_diff;
 for (i = 1; i < crvml_num_clocks; ++i) {
  diff = clock - crvml_clocks[i];
  diff = (diff < 0) ? -diff : diff;
  if (diff < cur_diff) {
   cur_index = i;
   cur_diff = diff;
  }
 }
 return cur_index;
}
