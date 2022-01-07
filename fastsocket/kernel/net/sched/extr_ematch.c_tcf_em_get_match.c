
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_ematch_tree {struct tcf_ematch* matches; } ;
struct tcf_ematch {int dummy; } ;



__attribute__((used)) static inline struct tcf_ematch * tcf_em_get_match(struct tcf_ematch_tree *tree,
         int index)
{
 return &tree->matches[index];
}
