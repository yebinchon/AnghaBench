
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int dummy; } ;
struct boot_info {int dummy; } ;


 struct boot_info* build_boot_info (int *,struct node*,int ) ;
 struct node* name_node (struct node*,char*,int *) ;
 struct node* read_fstree (char const*) ;

struct boot_info *dt_from_fs(const char *dirname)
{
 struct node *tree;

 tree = read_fstree(dirname);
 tree = name_node(tree, "", ((void*)0));

 return build_boot_info(((void*)0), tree, 0);
}
