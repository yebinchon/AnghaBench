
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {struct rb_node* rb_node; } ;
struct rb_node {struct rb_node* rb_left; struct rb_node* rb_right; } ;


 int __rb_rotate_left (struct rb_node*,struct rb_root*) ;
 int __rb_rotate_right (struct rb_node*,struct rb_root*) ;
 int rb_color (struct rb_node*) ;
 scalar_t__ rb_is_black (struct rb_node*) ;
 scalar_t__ rb_is_red (struct rb_node*) ;
 struct rb_node* rb_parent (struct rb_node*) ;
 int rb_set_black (struct rb_node*) ;
 int rb_set_color (struct rb_node*,int ) ;
 int rb_set_red (struct rb_node*) ;

__attribute__((used)) static void __rb_erase_color(struct rb_node *node, struct rb_node *parent,
        struct rb_root *root)
{
 struct rb_node *other;

 while ((!node || rb_is_black(node)) && node != root->rb_node)
 {
  if (parent->rb_left == node)
  {
   other = parent->rb_right;
   if (rb_is_red(other))
   {
    rb_set_black(other);
    rb_set_red(parent);
    __rb_rotate_left(parent, root);
    other = parent->rb_right;
   }
   if ((!other->rb_left || rb_is_black(other->rb_left)) &&
       (!other->rb_right || rb_is_black(other->rb_right)))
   {
    rb_set_red(other);
    node = parent;
    parent = rb_parent(node);
   }
   else
   {
    if (!other->rb_right || rb_is_black(other->rb_right))
    {
     rb_set_black(other->rb_left);
     rb_set_red(other);
     __rb_rotate_right(other, root);
     other = parent->rb_right;
    }
    rb_set_color(other, rb_color(parent));
    rb_set_black(parent);
    rb_set_black(other->rb_right);
    __rb_rotate_left(parent, root);
    node = root->rb_node;
    break;
   }
  }
  else
  {
   other = parent->rb_left;
   if (rb_is_red(other))
   {
    rb_set_black(other);
    rb_set_red(parent);
    __rb_rotate_right(parent, root);
    other = parent->rb_left;
   }
   if ((!other->rb_left || rb_is_black(other->rb_left)) &&
       (!other->rb_right || rb_is_black(other->rb_right)))
   {
    rb_set_red(other);
    node = parent;
    parent = rb_parent(node);
   }
   else
   {
    if (!other->rb_left || rb_is_black(other->rb_left))
    {
     rb_set_black(other->rb_right);
     rb_set_red(other);
     __rb_rotate_left(other, root);
     other = parent->rb_left;
    }
    rb_set_color(other, rb_color(parent));
    rb_set_black(parent);
    rb_set_black(other->rb_left);
    __rb_rotate_right(parent, root);
    node = root->rb_node;
    break;
   }
  }
 }
 if (node)
  rb_set_black(node);
}
