
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct lmodule {int dummy; } ;
struct TYPE_2__ {struct lmodule* tree_data; } ;


 TYPE_1__* tree ;
 size_t tree_size ;

__attribute__((used)) static void
tree_unmerge(struct lmodule *mod)
{
 u_int s, d;

 for(s = d = 0; s < tree_size; s++)
  if (tree[s].tree_data != mod) {
   if (s != d)
    tree[d] = tree[s];
   d++;
  }
 tree_size = d;
}
