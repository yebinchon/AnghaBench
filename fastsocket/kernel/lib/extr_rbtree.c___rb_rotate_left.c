
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {struct rb_node* rb_node; } ;
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;


 struct rb_node* rb_parent (struct rb_node*) ;
 int rb_set_parent (struct rb_node*,struct rb_node*) ;

__attribute__((used)) static void __rb_rotate_left(struct rb_node *node, struct rb_root *root)
{
 struct rb_node *right = node->rb_right;
 struct rb_node *parent = rb_parent(node);

 if ((node->rb_right = right->rb_left))
  rb_set_parent(right->rb_left, node);
 right->rb_left = node;

 rb_set_parent(right, parent);

 if (parent)
 {
  if (node == parent->rb_left)
   parent->rb_left = right;
  else
   parent->rb_right = right;
 }
 else
  root->rb_node = right;
 rb_set_parent(node, right);
}
