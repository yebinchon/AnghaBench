
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nodemask_t ;


 int nodes_fold (int ,int const,int ) ;
 int nodes_onto (int ,int ,int const) ;
 int nodes_weight (int const) ;

__attribute__((used)) static void mpol_relative_nodemask(nodemask_t *ret, const nodemask_t *orig,
       const nodemask_t *rel)
{
 nodemask_t tmp;
 nodes_fold(tmp, *orig, nodes_weight(*rel));
 nodes_onto(*ret, tmp, *rel);
}
