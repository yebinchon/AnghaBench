
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configfs_attribute {int dummy; } ;


 int ARRAY_SIZE (struct configfs_attribute**) ;
 int BUG () ;
 struct configfs_attribute** o2nm_node_attrs ;

__attribute__((used)) static int o2nm_attr_index(struct configfs_attribute *attr)
{
 int i;
 for (i = 0; i < ARRAY_SIZE(o2nm_node_attrs); i++) {
  if (attr == o2nm_node_attrs[i])
   return i;
 }
 BUG();
 return 0;
}
