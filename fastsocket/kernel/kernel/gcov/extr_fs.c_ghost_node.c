
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gcov_node {TYPE_1__* info; int ghost; } ;
struct TYPE_2__ {int filename; } ;


 int ENOMEM ;
 int gcov_info_dup (TYPE_1__*) ;
 int pr_warning (char*,int ) ;

__attribute__((used)) static int ghost_node(struct gcov_node *node)
{
 node->ghost = gcov_info_dup(node->info);
 if (!node->ghost) {
  pr_warning("could not save data for '%s' (out of memory)\n",
      node->info->filename);
  return -ENOMEM;
 }
 node->info = ((void*)0);

 return 0;
}
