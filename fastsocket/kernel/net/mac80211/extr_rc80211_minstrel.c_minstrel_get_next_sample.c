
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minstrel_sta_info {scalar_t__ sample_column; int n_rates; scalar_t__ sample_row; } ;


 scalar_t__ SAMPLE_COLUMNS ;
 unsigned int SAMPLE_TBL (struct minstrel_sta_info*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
minstrel_get_next_sample(struct minstrel_sta_info *mi)
{
 unsigned int sample_ndx;
 sample_ndx = SAMPLE_TBL(mi, mi->sample_row, mi->sample_column);
 mi->sample_row++;
 if ((int) mi->sample_row >= mi->n_rates) {
  mi->sample_row = 0;
  mi->sample_column++;
  if (mi->sample_column >= SAMPLE_COLUMNS)
   mi->sample_column = 0;
 }
 return sample_ndx;
}
