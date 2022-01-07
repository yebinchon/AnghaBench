
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_node {struct gcov_info* info; int * ghost; } ;
struct gcov_info {int filename; } ;


 int gcov_info_add (struct gcov_info*,int *) ;
 int gcov_info_free (int *) ;
 scalar_t__ gcov_info_is_compatible (int *,struct gcov_info*) ;
 int pr_warning (char*,int ) ;

__attribute__((used)) static void revive_node(struct gcov_node *node, struct gcov_info *info)
{
 if (gcov_info_is_compatible(node->ghost, info))
  gcov_info_add(info, node->ghost);
 else {
  pr_warning("discarding saved data for '%s' (version changed)\n",
      info->filename);
 }
 gcov_info_free(node->ghost);
 node->ghost = ((void*)0);
 node->info = info;
}
