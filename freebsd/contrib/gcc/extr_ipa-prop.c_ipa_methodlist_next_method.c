
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ipa_methodlist_p ;
struct TYPE_4__ {struct TYPE_4__* next_method; } ;



__attribute__((used)) static inline ipa_methodlist_p
ipa_methodlist_next_method (ipa_methodlist_p wl)
{
  return wl->next_method;
}
