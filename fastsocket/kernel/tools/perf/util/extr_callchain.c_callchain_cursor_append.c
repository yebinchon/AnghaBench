
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct symbol {int dummy; } ;
struct map {int dummy; } ;
struct callchain_cursor_node {struct callchain_cursor_node* next; struct symbol* sym; struct map* map; int ip; } ;
struct callchain_cursor {struct callchain_cursor_node** last; int nr; } ;


 int ENOMEM ;
 struct callchain_cursor_node* calloc (int,int) ;

int callchain_cursor_append(struct callchain_cursor *cursor,
       u64 ip, struct map *map, struct symbol *sym)
{
 struct callchain_cursor_node *node = *cursor->last;

 if (!node) {
  node = calloc(sizeof(*node), 1);
  if (!node)
   return -ENOMEM;

  *cursor->last = node;
 }

 node->ip = ip;
 node->map = map;
 node->sym = sym;

 cursor->nr++;

 cursor->last = &node->next;

 return 0;
}
