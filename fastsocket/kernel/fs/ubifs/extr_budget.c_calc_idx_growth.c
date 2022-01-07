
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int max_idx_node_sz; } ;
struct ubifs_budget_req {int new_ino; int new_page; int new_dent; } ;


 int UBIFS_BLOCKS_PER_PAGE_SHIFT ;

__attribute__((used)) static int calc_idx_growth(const struct ubifs_info *c,
      const struct ubifs_budget_req *req)
{
 int znodes;

 znodes = req->new_ino + (req->new_page << UBIFS_BLOCKS_PER_PAGE_SHIFT) +
   req->new_dent;
 return znodes * c->max_idx_node_sz;
}
