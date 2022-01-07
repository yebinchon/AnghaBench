
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_node {int dummy; } ;


 int ipa_method_formal_count (struct cgraph_node*) ;
 int ipa_method_modify_create (struct cgraph_node*) ;
 int ipa_method_modify_set (struct cgraph_node*,int,int) ;

__attribute__((used)) static void
ipa_method_modify_init (struct cgraph_node *mt)
{
  int i, count;

  ipa_method_modify_create (mt);
  count = ipa_method_formal_count (mt);
  for (i = 0; i < count; i++)
    ipa_method_modify_set (mt, i, 0);
}
