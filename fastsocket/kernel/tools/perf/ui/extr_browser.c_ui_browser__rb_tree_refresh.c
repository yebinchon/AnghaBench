
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_browser {int height; int (* write ) (struct ui_browser*,struct rb_node*,int) ;struct rb_node* top; int entries; } ;
struct rb_node {int dummy; } ;


 struct rb_node* rb_first (int ) ;
 struct rb_node* rb_next (struct rb_node*) ;
 int stub1 (struct ui_browser*,struct rb_node*,int) ;
 int ui_browser__gotorc (struct ui_browser*,int,int ) ;

unsigned int ui_browser__rb_tree_refresh(struct ui_browser *browser)
{
 struct rb_node *nd;
 int row = 0;

 if (browser->top == ((void*)0))
                browser->top = rb_first(browser->entries);

 nd = browser->top;

 while (nd != ((void*)0)) {
  ui_browser__gotorc(browser, row, 0);
  browser->write(browser, nd, row);
  if (++row == browser->height)
   break;
  nd = rb_next(nd);
 }

 return row;
}
