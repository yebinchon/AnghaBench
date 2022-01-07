
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int dummy; } ;
struct rb_node {int dummy; } ;


 struct rb_node* __key_user_next (struct rb_node*) ;
 struct rb_node* rb_first (struct rb_root*) ;

__attribute__((used)) static struct rb_node *key_user_first(struct rb_root *r)
{
 struct rb_node *n = rb_first(r);
 return __key_user_next(n);
}
