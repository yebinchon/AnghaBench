
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fdt_delprop (char*,int,char const*) ;
 int fdt_path_offset (char*,char const*) ;
 int report_error (char const*,int,int) ;

__attribute__((used)) static int delete_prop(char *blob, const char *node_name, const char *prop_name)
{
 int node = 0;

 node = fdt_path_offset(blob, node_name);
 if (node < 0) {
  report_error(node_name, -1, node);
  return -1;
 }

 node = fdt_delprop(blob, node, prop_name);
 if (node < 0) {
  report_error(node_name, -1, node);
  return -1;
 }

 return 0;
}
