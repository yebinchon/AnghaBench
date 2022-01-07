
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct callchain_root {scalar_t__ max_depth; int node; } ;
struct callchain_cursor {scalar_t__ nr; } ;


 int append_chain_children (int *,struct callchain_cursor*,int ) ;
 int callchain_cursor_commit (struct callchain_cursor*) ;

int callchain_append(struct callchain_root *root,
       struct callchain_cursor *cursor,
       u64 period)
{
 if (!cursor->nr)
  return 0;

 callchain_cursor_commit(cursor);

 append_chain_children(&root->node, cursor, period);

 if (cursor->nr > root->max_depth)
  root->max_depth = cursor->nr;

 return 0;
}
