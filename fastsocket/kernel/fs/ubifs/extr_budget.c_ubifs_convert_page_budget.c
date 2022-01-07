
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int budg_idx_growth; int max_idx_node_sz; int space_lock; int min_idx_lebs; scalar_t__ page_budget; int budg_dd_growth; int budg_data_growth; } ;


 int UBIFS_BLOCKS_PER_PAGE_SHIFT ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubifs_calc_min_idx_lebs (struct ubifs_info*) ;

void ubifs_convert_page_budget(struct ubifs_info *c)
{
 spin_lock(&c->space_lock);

 c->budg_idx_growth -= c->max_idx_node_sz << UBIFS_BLOCKS_PER_PAGE_SHIFT;

 c->budg_data_growth -= c->page_budget;

 c->budg_dd_growth += c->page_budget;

 c->min_idx_lebs = ubifs_calc_min_idx_lebs(c);
 spin_unlock(&c->space_lock);
}
