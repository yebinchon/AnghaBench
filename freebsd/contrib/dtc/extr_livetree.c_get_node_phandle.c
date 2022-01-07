
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {scalar_t__ phandle; } ;
typedef int cell_t ;


 int PHANDLE_EPAPR ;
 int PHANDLE_LEGACY ;
 int add_property (struct node*,int ) ;
 int build_property (char*,int ) ;
 int data_append_cell (int ,int) ;
 int empty_data ;
 scalar_t__ get_node_by_phandle (struct node*,int) ;
 int get_property (struct node*,char*) ;
 int phandle_format ;

cell_t get_node_phandle(struct node *root, struct node *node)
{
 static cell_t phandle = 1;

 if ((node->phandle != 0) && (node->phandle != -1))
  return node->phandle;

 while (get_node_by_phandle(root, phandle))
  phandle++;

 node->phandle = phandle;

 if (!get_property(node, "linux,phandle")
     && (phandle_format & PHANDLE_LEGACY))
  add_property(node,
        build_property("linux,phandle",
         data_append_cell(empty_data, phandle)));

 if (!get_property(node, "phandle")
     && (phandle_format & PHANDLE_EPAPR))
  add_property(node,
        build_property("phandle",
         data_append_cell(empty_data, phandle)));





 return node->phandle;
}
