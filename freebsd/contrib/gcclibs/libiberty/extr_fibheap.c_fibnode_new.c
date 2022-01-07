
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* fibnode_t ;
struct TYPE_3__ {struct TYPE_3__* right; struct TYPE_3__* left; } ;


 scalar_t__ xcalloc (int,int) ;

__attribute__((used)) static fibnode_t
fibnode_new (void)
{
  fibnode_t node;

  node = (fibnode_t) xcalloc (1, sizeof *node);
  node->left = node;
  node->right = node;

  return node;
}
