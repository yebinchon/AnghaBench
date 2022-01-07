
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct range {scalar_t__ end; scalar_t__ start; } ;


 int cmp_range ;
 int sort (struct range*,int,int,int ,int *) ;

int clean_sort_range(struct range *range, int az)
{
 int i, j, k = az - 1, nr_range = 0;

 for (i = 0; i < k; i++) {
  if (range[i].end)
   continue;
  for (j = k; j > i; j--) {
   if (range[j].end) {
    k = j;
    break;
   }
  }
  if (j == i)
   break;
  range[i].start = range[k].start;
  range[i].end = range[k].end;
  range[k].start = 0;
  range[k].end = 0;
  k--;
 }

 for (i = 0; i < az; i++) {
  if (!range[i].end) {
   nr_range = i;
   break;
  }
 }


 sort(range, nr_range, sizeof(struct range), cmp_range, ((void*)0));

 return nr_range;
}
