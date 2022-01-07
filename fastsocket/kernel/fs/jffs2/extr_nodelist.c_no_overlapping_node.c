
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct rb_root {int rb_node; } ;
struct jffs2_sb_info {int dummy; } ;
struct TYPE_6__ {int rb_right; } ;
struct jffs2_node_frag {TYPE_2__ rb; scalar_t__ size; scalar_t__ ofs; TYPE_1__* node; } ;
struct TYPE_5__ {scalar_t__ ofs; } ;


 int ENOMEM ;
 int dbg_fragtree2 (char*,...) ;
 int jffs2_free_node_frag (struct jffs2_node_frag*) ;
 struct jffs2_node_frag* new_fragment (int *,scalar_t__,scalar_t__) ;
 int rb_insert_color (TYPE_2__*,struct rb_root*) ;
 int rb_link_node (TYPE_2__*,TYPE_2__*,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int no_overlapping_node(struct jffs2_sb_info *c, struct rb_root *root,
           struct jffs2_node_frag *newfrag,
          struct jffs2_node_frag *this, uint32_t lastend)
{
 if (lastend < newfrag->node->ofs) {

  struct jffs2_node_frag *holefrag;

  holefrag= new_fragment(((void*)0), lastend, newfrag->node->ofs - lastend);
  if (unlikely(!holefrag)) {
   jffs2_free_node_frag(newfrag);
   return -ENOMEM;
  }

  if (this) {



   dbg_fragtree2("add hole frag %#04x-%#04x on the right of the new frag.\n",
    holefrag->ofs, holefrag->ofs + holefrag->size);
   rb_link_node(&holefrag->rb, &this->rb, &this->rb.rb_right);
  } else {
   dbg_fragtree2("Add hole frag %#04x-%#04x to the root of the tree.\n",
    holefrag->ofs, holefrag->ofs + holefrag->size);
   rb_link_node(&holefrag->rb, ((void*)0), &root->rb_node);
  }
  rb_insert_color(&holefrag->rb, root);
  this = holefrag;
 }

 if (this) {



  dbg_fragtree2("add the new node at the right\n");
  rb_link_node(&newfrag->rb, &this->rb, &this->rb.rb_right);
 } else {
  dbg_fragtree2("insert the new node at the root of the tree\n");
  rb_link_node(&newfrag->rb, ((void*)0), &root->rb_node);
 }
 rb_insert_color(&newfrag->rb, root);

 return 0;
}
