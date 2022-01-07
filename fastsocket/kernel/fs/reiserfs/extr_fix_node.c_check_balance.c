
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_node {char* vn_free_ptr; int vn_mode; int vn_affected_item_num; int vn_pos_in_item; struct item_head* vn_ins_ih; void const* vn_data; } ;
struct tree_balance {scalar_t__* insert_size; struct virtual_node* tb_vn; scalar_t__ vn_buf; } ;
struct item_head {int dummy; } ;


 int M_INSERT ;
 int RFALSE (int,char*) ;
 int dc_check_balance (struct tree_balance*,int) ;
 int ip_check_balance (struct tree_balance*,int) ;

__attribute__((used)) static int check_balance(int mode,
    struct tree_balance *tb,
    int h,
    int inum,
    int pos_in_item,
    struct item_head *ins_ih, const void *data)
{
 struct virtual_node *vn;

 vn = tb->tb_vn = (struct virtual_node *)(tb->vn_buf);
 vn->vn_free_ptr = (char *)(tb->tb_vn + 1);
 vn->vn_mode = mode;
 vn->vn_affected_item_num = inum;
 vn->vn_pos_in_item = pos_in_item;
 vn->vn_ins_ih = ins_ih;
 vn->vn_data = data;

 RFALSE(mode == M_INSERT && !vn->vn_ins_ih,
        "vs-8255: ins_ih can not be 0 in insert mode");

 if (tb->insert_size[h] > 0)

  return ip_check_balance(tb, h);


 return dc_check_balance(tb, h);
}
