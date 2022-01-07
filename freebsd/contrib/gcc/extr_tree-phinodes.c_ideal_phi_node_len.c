
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_phi_node {int dummy; } ;
struct phi_arg_d {int dummy; } ;


 int ceil_log2 (size_t) ;

__attribute__((used)) static int
ideal_phi_node_len (int len)
{
  size_t size, new_size;
  int log2, new_len;


  if (len < 2)
    len = 2;


  size = sizeof (struct tree_phi_node) + (len - 1) * sizeof (struct phi_arg_d);


  log2 = ceil_log2 (size);
  new_size = 1 << log2;



  new_len = len + (new_size - size) / sizeof (struct phi_arg_d);
  return new_len;
}
