
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_node {int dummy; } ;
typedef int ipa_methodlist_p ;


 int free (int ) ;
 struct cgraph_node* ipa_methodlist_method (int ) ;
 int ipa_methodlist_next_method (int ) ;

struct cgraph_node *
ipa_remove_method (ipa_methodlist_p * wl)
{
  ipa_methodlist_p first;
  struct cgraph_node *return_method;

  first = *wl;
  *wl = ipa_methodlist_next_method (*wl);
  return_method = ipa_methodlist_method (first);
  free (first);
  return return_method;
}
