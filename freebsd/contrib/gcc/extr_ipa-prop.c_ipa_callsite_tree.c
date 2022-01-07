
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct cgraph_edge {int call_stmt; } ;



__attribute__((used)) static inline tree
ipa_callsite_tree (struct cgraph_edge *cs)
{
  return cs->call_stmt;
}
