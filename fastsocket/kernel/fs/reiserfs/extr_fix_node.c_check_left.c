
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_node {int vn_nr_item; unsigned int vn_size; scalar_t__ vn_mode; struct virtual_item* vn_vi; } ;
struct virtual_item {int vi_type; scalar_t__ vi_item_len; } ;
struct tree_balance {int* lnum; int lbytes; int tb_path; struct virtual_node* tb_vn; } ;


 int DC_SIZE ;
 unsigned int IH_SIZE ;
 int KEY_SIZE ;
 scalar_t__ M_INSERT ;
 scalar_t__ M_PASTE ;
 int PATH_H_PPARENT (int ,int ) ;
 int RFALSE (int,char*,...) ;
 int VI_TYPE_LEFT_MERGEABLE ;
 int op_check_left (struct virtual_item*,int,int ,int ) ;

__attribute__((used)) static void check_left(struct tree_balance *tb, int h, int cur_free)
{
 int i;
 struct virtual_node *vn = tb->tb_vn;
 struct virtual_item *vi;
 int d_size, ih_size;

 RFALSE(cur_free < 0, "vs-8050: cur_free (%d) < 0", cur_free);


 if (h > 0) {
  tb->lnum[h] = cur_free / (DC_SIZE + KEY_SIZE);
  return;
 }



 if (!cur_free || !vn->vn_nr_item) {

  tb->lnum[h] = 0;
  tb->lbytes = -1;
  return;
 }

 RFALSE(!PATH_H_PPARENT(tb->tb_path, 0),
        "vs-8055: parent does not exist or invalid");

 vi = vn->vn_vi;
 if ((unsigned int)cur_free >=
     (vn->vn_size -
      ((vi->vi_type & VI_TYPE_LEFT_MERGEABLE) ? IH_SIZE : 0))) {


  RFALSE(vn->vn_mode == M_INSERT || vn->vn_mode == M_PASTE,
         "vs-8055: invalid mode or balance condition failed");

  tb->lnum[0] = vn->vn_nr_item;
  tb->lbytes = -1;
  return;
 }

 d_size = 0, ih_size = IH_SIZE;


 if (vi->vi_type & VI_TYPE_LEFT_MERGEABLE)
  d_size = -((int)IH_SIZE), ih_size = 0;

 tb->lnum[0] = 0;
 for (i = 0; i < vn->vn_nr_item;
      i++, ih_size = IH_SIZE, d_size = 0, vi++) {
  d_size += vi->vi_item_len;
  if (cur_free >= d_size) {

   cur_free -= d_size;
   tb->lnum[0]++;
   continue;
  }



  if (cur_free <= ih_size) {

   tb->lbytes = -1;
   return;
  }
  cur_free -= ih_size;

  tb->lbytes = op_check_left(vi, cur_free, 0, 0);
  if (tb->lbytes != -1)

   tb->lnum[0]++;

  break;
 }

 return;
}
