
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cgraph_node {int dummy; } ;
typedef TYPE_1__* ipa_methodlist_p ;
struct TYPE_3__ {struct cgraph_node* method_p; } ;



__attribute__((used)) static inline struct cgraph_node *
ipa_methodlist_method (ipa_methodlist_p wl)
{
  return wl->method_p;
}
