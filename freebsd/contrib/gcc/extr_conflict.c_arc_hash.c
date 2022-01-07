
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int hashval_t ;
typedef TYPE_1__* const_conflict_graph_arc ;
struct TYPE_2__ {int larger; int smaller; } ;


 int CONFLICT_HASH_FN (int ,int ) ;

__attribute__((used)) static hashval_t
arc_hash (const void *arcp)
{
  const_conflict_graph_arc arc = (const_conflict_graph_arc) arcp;

  return CONFLICT_HASH_FN (arc->smaller, arc->larger);
}
