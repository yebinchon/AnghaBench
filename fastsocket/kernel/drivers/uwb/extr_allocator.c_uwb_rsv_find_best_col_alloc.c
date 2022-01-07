
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rsv_alloc_info {int max_mas; int min_mas; } ;


 int UWB_MAS_PER_ZONE ;
 int UWB_NUM_ZONES ;
 scalar_t__ UWB_RSV_ALLOC_FOUND ;
 int UWB_RSV_ALLOC_NOT_FOUND ;
 int uwb_rsv_fill_column_alloc (struct uwb_rsv_alloc_info*) ;
 scalar_t__ uwb_rsv_find_best_column_set (struct uwb_rsv_alloc_info*,int,int,int) ;

__attribute__((used)) static int uwb_rsv_find_best_col_alloc(struct uwb_rsv_alloc_info *ai, int interval)
{
 int n_safe, n_unsafe, n_mas;
 int n_column = UWB_NUM_ZONES / interval;
 int max_per_zone = ai->max_mas / n_column;
 int min_per_zone = ai->min_mas / n_column;

 if (ai->min_mas % n_column)
  min_per_zone++;

 if (min_per_zone > UWB_MAS_PER_ZONE) {
  return UWB_RSV_ALLOC_NOT_FOUND;
 }

 if (max_per_zone > UWB_MAS_PER_ZONE) {
  max_per_zone = UWB_MAS_PER_ZONE;
 }

 for (n_mas = max_per_zone; n_mas >= min_per_zone; n_mas--) {
  if (uwb_rsv_find_best_column_set(ai, interval, 0, n_mas) == UWB_RSV_ALLOC_NOT_FOUND)
   continue;
  for (n_safe = n_mas; n_safe >= 0; n_safe--) {
   n_unsafe = n_mas - n_safe;
   if (uwb_rsv_find_best_column_set(ai, interval, n_safe, n_unsafe) == UWB_RSV_ALLOC_FOUND) {
    uwb_rsv_fill_column_alloc(ai);
    return UWB_RSV_ALLOC_FOUND;
   }
  }
 }
 return UWB_RSV_ALLOC_NOT_FOUND;
}
