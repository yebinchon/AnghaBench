
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gcov_node {int * links; } ;
struct TYPE_2__ {scalar_t__ ext; } ;


 int debugfs_remove (int ) ;
 TYPE_1__* gcov_link ;
 int kfree (int *) ;

__attribute__((used)) static void remove_links(struct gcov_node *node)
{
 int i;

 if (!node->links)
  return;
 for (i = 0; gcov_link[i].ext; i++)
  debugfs_remove(node->links[i]);
 kfree(node->links);
 node->links = ((void*)0);
}
