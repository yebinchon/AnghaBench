
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {struct rb_node* rb_node; } ;
struct rb_node {int rb_parent_color; struct rb_node* rb_left; struct rb_node* rb_right; } ;


 int BUG_ON (struct rb_node*) ;
 struct rb_node* rb_parent (struct rb_node*) ;

__attribute__((used)) static void eat_last(struct rb_root *root, struct rb_node *node)
{
 struct rb_node *parent = rb_parent(node);
 struct rb_node **link;


 BUG_ON(node->rb_right);

 if (!parent)
  link = &root->rb_node;
 else if (node == parent->rb_left)
  link = &parent->rb_left;
 else
  link = &parent->rb_right;

 *link = node->rb_left;

 if (node->rb_left)
  node->rb_left->rb_parent_color = node->rb_parent_color;
}
