
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct callchain_node {int hit; scalar_t__ children_hit; } ;
struct callchain_cursor {int dummy; } ;


 struct callchain_node* create_child (struct callchain_node*,int) ;
 int fill_node (struct callchain_node*,struct callchain_cursor*) ;

__attribute__((used)) static void
add_child(struct callchain_node *parent,
   struct callchain_cursor *cursor,
   u64 period)
{
 struct callchain_node *new;

 new = create_child(parent, 0);
 fill_node(new, cursor);

 new->children_hit = 0;
 new->hit = period;
}
