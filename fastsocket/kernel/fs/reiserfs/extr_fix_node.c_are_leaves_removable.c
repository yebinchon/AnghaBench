
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtual_node {int vn_nr_item; int vn_size; TYPE_1__* vn_vi; } ;
struct tree_balance {int tb_sb; int * rkey; scalar_t__* CFR; int tb_path; struct virtual_node* tb_vn; } ;
struct item_head {int ih_key; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int vi_type; } ;


 int B_NR_ITEMS (struct buffer_head*) ;
 int B_N_PDELIM_KEY (scalar_t__,int ) ;
 struct item_head* B_N_PITEM_HEAD (struct buffer_head*,int ) ;
 scalar_t__ DOT_OFFSET ;
 int IH_SIZE ;
 int MAX_CHILD_SIZE (struct buffer_head*) ;
 struct buffer_head* PATH_H_PBUFFER (int ,int ) ;
 int PROC_INFO_INC (int ,int ) ;
 int RFALSE (int,char*,...) ;
 int VI_TYPE_LEFT_MERGEABLE ;
 int VI_TYPE_RIGHT_MERGEABLE ;
 int comp_short_le_keys (int *,int ) ;
 scalar_t__ is_direntry_le_ih (struct item_head*) ;
 scalar_t__ le_ih_k_offset (struct item_head*) ;
 int leaves_removable ;
 int set_parameters (struct tree_balance*,int ,int,int,int,int *,int,int) ;

__attribute__((used)) static int are_leaves_removable(struct tree_balance *tb, int lfree, int rfree)
{
 struct virtual_node *vn = tb->tb_vn;
 int ih_size;
 struct buffer_head *S0;

 S0 = PATH_H_PBUFFER(tb->tb_path, 0);

 ih_size = 0;
 if (vn->vn_nr_item) {
  if (vn->vn_vi[0].vi_type & VI_TYPE_LEFT_MERGEABLE)
   ih_size += IH_SIZE;

  if (vn->vn_vi[vn->vn_nr_item - 1].
      vi_type & VI_TYPE_RIGHT_MERGEABLE)
   ih_size += IH_SIZE;
 } else {

  struct item_head *ih;

  RFALSE(B_NR_ITEMS(S0) != 1,
         "vs-8125: item number must be 1: it is %d",
         B_NR_ITEMS(S0));

  ih = B_N_PITEM_HEAD(S0, 0);
  if (tb->CFR[0]
      && !comp_short_le_keys(&(ih->ih_key),
        B_N_PDELIM_KEY(tb->CFR[0],
         tb->rkey[0])))
   if (is_direntry_le_ih(ih)) {







    ih_size = IH_SIZE;



    RFALSE(le_ih_k_offset(ih) == DOT_OFFSET,
           "vs-8130: first directory item can not be removed until directory is not empty");
   }

 }

 if (MAX_CHILD_SIZE(S0) + vn->vn_size <= rfree + lfree + ih_size) {
  set_parameters(tb, 0, -1, -1, -1, ((void*)0), -1, -1);
  PROC_INFO_INC(tb->tb_sb, leaves_removable);
  return 1;
 }
 return 0;

}
