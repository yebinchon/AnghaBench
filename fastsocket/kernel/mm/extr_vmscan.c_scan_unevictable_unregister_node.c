
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int sysdev; } ;


 int attr_scan_unevictable_pages ;
 int sysdev_remove_file (int *,int *) ;

void scan_unevictable_unregister_node(struct node *node)
{
 sysdev_remove_file(&node->sysdev, &attr_scan_unevictable_pages);
}
