
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int dummy; } ;
struct rb_node {int dummy; } ;


 int RB_CLEAR_NODE (struct rb_node*) ;
 scalar_t__ RB_EMPTY_NODE (struct rb_node*) ;
 int WARN_ON (int) ;
 int rb_erase (struct rb_node*,struct rb_root*) ;

__attribute__((used)) static void htb_safe_rb_erase(struct rb_node *rb, struct rb_root *root)
{
 if (RB_EMPTY_NODE(rb)) {
  WARN_ON(1);
 } else {
  rb_erase(rb, root);
  RB_CLEAR_NODE(rb);
 }
}
