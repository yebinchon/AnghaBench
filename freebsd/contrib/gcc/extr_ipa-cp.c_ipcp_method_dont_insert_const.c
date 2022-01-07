
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_node {int decl; } ;


 scalar_t__ DECL_UNINLINABLE (int ) ;

__attribute__((used)) static bool
ipcp_method_dont_insert_const (struct cgraph_node *mt)
{

  if (DECL_UNINLINABLE (mt->decl))
    return 1;
  return 0;
}
