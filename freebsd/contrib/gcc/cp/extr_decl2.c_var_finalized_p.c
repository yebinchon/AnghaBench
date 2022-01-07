
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {int finalized; } ;


 TYPE_1__* cgraph_varpool_node (int ) ;

__attribute__((used)) static bool
var_finalized_p (tree var)
{
  return cgraph_varpool_node (var)->finalized;
}
