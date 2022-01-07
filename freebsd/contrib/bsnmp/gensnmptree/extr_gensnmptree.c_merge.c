
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int subs; } ;
struct TYPE_4__ {TYPE_1__ tree; } ;
struct node {scalar_t__ type; scalar_t__ id; TYPE_2__ u; } ;


 scalar_t__ NODE_TREE ;
 int errx (int,char*) ;
 int merge_subs (int *,int *) ;

__attribute__((used)) static void
merge(struct node **root, struct node *t)
{

 if (*root == ((void*)0)) {
  *root = t;
  return;
 }
 if (t == ((void*)0))
  return;


 if ((*root)->type != NODE_TREE)
  errx(1, "root is not a tree");
 if (t->type != NODE_TREE)
  errx(1, "can merge only with tree");
 if ((*root)->id != t->id)
  errx(1, "trees to merge must have same id");

 merge_subs(&(*root)->u.tree.subs, &t->u.tree.subs);
}
