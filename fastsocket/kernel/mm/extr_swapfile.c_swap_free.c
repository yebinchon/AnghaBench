
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct swap_info_struct {int dummy; } ;


 int spin_unlock (int *) ;
 int swap_entry_free (struct swap_info_struct*,int ,int) ;
 struct swap_info_struct* swap_info_get (int ) ;
 int swap_lock ;

void swap_free(swp_entry_t entry)
{
 struct swap_info_struct *p;

 p = swap_info_get(entry);
 if (p) {
  swap_entry_free(p, entry, 1);
  spin_unlock(&swap_lock);
 }
}
