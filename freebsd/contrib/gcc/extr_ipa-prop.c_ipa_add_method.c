
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_node {int dummy; } ;
typedef int ipa_methodlist_p ;


 int ipa_create_methodlist_node () ;
 int ipa_methodlist_method_set (int ,struct cgraph_node*) ;
 int ipa_methodlist_next_method_set (int ,int ) ;

void
ipa_add_method (ipa_methodlist_p * wl, struct cgraph_node *mt)
{
  ipa_methodlist_p temp;

  temp = ipa_create_methodlist_node ();
  ipa_methodlist_method_set (temp, mt);
  ipa_methodlist_next_method_set (temp, *wl);
  *wl = temp;
}
