
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ declare_global_var (int ,int ) ;
 scalar_t__ dso_handle_node ;
 int get_identifier (char*) ;
 int ptr_type_node ;

__attribute__((used)) static tree
get_dso_handle_node (void)
{
  if (dso_handle_node)
    return dso_handle_node;


  dso_handle_node = declare_global_var (get_identifier ("__dso_handle"),
     ptr_type_node);

  return dso_handle_node;
}
