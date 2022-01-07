
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int sysdev; } ;


 int attr_scan_unevictable_pages ;
 int sysdev_create_file (int *,int *) ;

int scan_unevictable_register_node(struct node *node)
{
 return sysdev_create_file(&node->sysdev, &attr_scan_unevictable_pages);
}
