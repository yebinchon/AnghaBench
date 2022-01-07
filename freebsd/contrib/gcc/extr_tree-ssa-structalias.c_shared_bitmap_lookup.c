
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shared_bitmap_info {int hashcode; int * pt_vars; } ;
typedef TYPE_1__* shared_bitmap_info_t ;
typedef int * bitmap ;
struct TYPE_2__ {int * pt_vars; } ;


 int NO_INSERT ;
 int bitmap_hash (int *) ;
 void** htab_find_slot_with_hash (int ,struct shared_bitmap_info*,int ,int ) ;
 int shared_bitmap_table ;

__attribute__((used)) static bitmap
shared_bitmap_lookup (bitmap pt_vars)
{
  void **slot;
  struct shared_bitmap_info sbi;

  sbi.pt_vars = pt_vars;
  sbi.hashcode = bitmap_hash (pt_vars);

  slot = htab_find_slot_with_hash (shared_bitmap_table, &sbi,
       sbi.hashcode, NO_INSERT);
  if (!slot)
    return ((void*)0);
  else
    return ((shared_bitmap_info_t) *slot)->pt_vars;
}
