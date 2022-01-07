
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {int dummy; } ;


 struct rb_node* __key_user_next (int ) ;
 int rb_next (struct rb_node*) ;

__attribute__((used)) static struct rb_node *key_user_next(struct rb_node *n)
{
 return __key_user_next(rb_next(n));
}
