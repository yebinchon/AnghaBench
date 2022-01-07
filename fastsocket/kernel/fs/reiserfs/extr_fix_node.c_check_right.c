
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_node {int vn_nr_item; unsigned int vn_size; scalar_t__ vn_mode; struct virtual_item* vn_vi; } ;
struct virtual_item {int vi_type; scalar_t__ vi_item_len; } ;
struct tree_balance {int* rnum; int rbytes; int tb_path; struct virtual_node* tb_vn; } ;


 int DC_SIZE ;
 unsigned int IH_SIZE ;
 int KEY_SIZE ;
 scalar_t__ M_INSERT ;
 scalar_t__ M_PASTE ;
 int PATH_H_PPARENT (int ,int ) ;
 int RFALSE (int,char*) ;
 int VI_TYPE_RIGHT_MERGEABLE ;
 int op_check_right (struct virtual_item*,int) ;

__attribute__((used)) static void check_right(struct tree_balance *tb, int h, int cur_free)
{
 int i;
 struct virtual_node *vn = tb->tb_vn;
 struct virtual_item *vi;
 int d_size, ih_size;

 RFALSE(cur_free < 0, "vs-8070: cur_free < 0");


 if (h > 0) {
  tb->rnum[h] = cur_free / (DC_SIZE + KEY_SIZE);
  return;
 }



 if (!cur_free || !vn->vn_nr_item) {

  tb->rnum[h] = 0;
  tb->rbytes = -1;
  return;
 }

 RFALSE(!PATH_H_PPARENT(tb->tb_path, 0),
        "vs-8075: parent does not exist or invalid");

 vi = vn->vn_vi + vn->vn_nr_item - 1;
 if ((unsigned int)cur_free >=
     (vn->vn_size -
      ((vi->vi_type & VI_TYPE_RIGHT_MERGEABLE) ? IH_SIZE : 0))) {


  RFALSE(vn->vn_mode == M_INSERT || vn->vn_mode == M_PASTE,
         "vs-8080: invalid mode or balance condition failed");

  tb->rnum[h] = vn->vn_nr_item;
  tb->rbytes = -1;
  return;
 }

 d_size = 0, ih_size = IH_SIZE;


 if (vi->vi_type & VI_TYPE_RIGHT_MERGEABLE)
  d_size = -(int)IH_SIZE, ih_size = 0;

 tb->rnum[0] = 0;
 for (i = vn->vn_nr_item - 1; i >= 0;
      i--, d_size = 0, ih_size = IH_SIZE, vi--) {
  d_size += vi->vi_item_len;
  if (cur_free >= d_size) {

   cur_free -= d_size;
   tb->rnum[0]++;
   continue;
  }


  if (cur_free <= ih_size) {
   tb->rbytes = -1;
   return;
  }


  cur_free -= ih_size;

  tb->rbytes = op_check_right(vi, cur_free);
  if (tb->rbytes != -1)

   tb->rnum[0]++;

  break;
 }

 return;
}
