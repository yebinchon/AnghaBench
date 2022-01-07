
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_browser {struct rb_node* top; struct rb_root* entries; } ;
struct rb_root {int dummy; } ;
struct rb_node {int dummy; } ;
typedef scalar_t__ off_t ;





 struct rb_node* rb_first (struct rb_root*) ;
 struct rb_node* rb_last (struct rb_root*) ;
 struct rb_node* rb_next (struct rb_node*) ;
 struct rb_node* rb_prev (struct rb_node*) ;

void ui_browser__rb_tree_seek(struct ui_browser *browser, off_t offset, int whence)
{
 struct rb_root *root = browser->entries;
 struct rb_node *nd;

 switch (whence) {
 case 128:
  nd = rb_first(root);
  break;
 case 130:
  nd = browser->top;
  break;
 case 129:
  nd = rb_last(root);
  break;
 default:
  return;
 }

 if (offset > 0) {
  while (offset-- != 0)
   nd = rb_next(nd);
 } else {
  while (offset++ != 0)
   nd = rb_prev(nd);
 }

 browser->top = nd;
}
