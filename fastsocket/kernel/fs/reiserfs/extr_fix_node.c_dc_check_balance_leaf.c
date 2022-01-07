
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_node {int vn_nr_item; } ;
struct tree_balance {int* insert_size; int* lnum; int lbytes; int* rnum; int rbytes; int s0num; int * FL; int * FR; int tb_path; struct virtual_node* tb_vn; } ;
struct buffer_head {int dummy; } ;


 int B_FREE_SPACE (struct buffer_head*) ;
 int CARRY_ON ;
 int MAX_CHILD_SIZE (struct buffer_head*) ;
 int NO_BALANCING_NEEDED ;
 struct buffer_head* PATH_H_PBUFFER (int ,int ) ;
 struct buffer_head* PATH_H_PPARENT (int ,int ) ;
 int RFALSE (int,char*) ;
 scalar_t__ are_leaves_removable (struct tree_balance*,int,int) ;
 int check_left (struct tree_balance*,int,int) ;
 int check_right (struct tree_balance*,int,int) ;
 int create_virtual_node (struct tree_balance*,int) ;
 int get_lfree (struct tree_balance*,int) ;
 int get_parents (struct tree_balance*,int) ;
 int get_rfree (struct tree_balance*,int) ;
 scalar_t__ is_leaf_removable (struct tree_balance*) ;
 scalar_t__ is_left_neighbor_in_cache (struct tree_balance*,int) ;
 int set_parameters (struct tree_balance*,int,int,int,int,int *,int,int) ;

__attribute__((used)) static int dc_check_balance_leaf(struct tree_balance *tb, int h)
{
 struct virtual_node *vn = tb->tb_vn;





 int levbytes;

 int maxsize, ret;


 struct buffer_head *S0, *F0;
 int lfree, rfree ;

 S0 = PATH_H_PBUFFER(tb->tb_path, 0);
 F0 = PATH_H_PPARENT(tb->tb_path, 0);

 levbytes = tb->insert_size[h];

 maxsize = MAX_CHILD_SIZE(S0);

 if (!F0) {

  RFALSE(-levbytes >= maxsize - B_FREE_SPACE(S0),
         "vs-8240: attempt to create empty buffer tree");

  set_parameters(tb, h, 0, 0, 1, ((void*)0), -1, -1);
  return NO_BALANCING_NEEDED;
 }

 if ((ret = get_parents(tb, h)) != CARRY_ON)
  return ret;


 rfree = get_rfree(tb, h);
 lfree = get_lfree(tb, h);

 create_virtual_node(tb, h);


 if (are_leaves_removable(tb, lfree, rfree))
  return CARRY_ON;





 check_left(tb, h, lfree);
 check_right(tb, h, rfree);


 if (tb->lnum[0] >= vn->vn_nr_item && tb->lbytes == -1)
  if (is_left_neighbor_in_cache(tb, h) || ((tb->rnum[0] - ((tb->rbytes == -1) ? 0 : 1)) < vn->vn_nr_item) ||
      !tb->FR[h]) {

   RFALSE(!tb->FL[h],
          "vs-8245: dc_check_balance_leaf: FL[h] must exist");


   set_parameters(tb, h, -1, 0, 0, ((void*)0), -1, -1);
   return CARRY_ON;
  }


 if (tb->rnum[0] >= vn->vn_nr_item && tb->rbytes == -1) {
  set_parameters(tb, h, 0, -1, 0, ((void*)0), -1, -1);
  return CARRY_ON;
 }


 if (is_leaf_removable(tb))
  return CARRY_ON;


 tb->s0num = vn->vn_nr_item;
 set_parameters(tb, h, 0, 0, 1, ((void*)0), -1, -1);
 return NO_BALANCING_NEEDED;
}
