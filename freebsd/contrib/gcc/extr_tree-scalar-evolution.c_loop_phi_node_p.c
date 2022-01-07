
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {scalar_t__ header; } ;


 scalar_t__ bb_for_stmt (int ) ;
 TYPE_1__* loop_containing_stmt (int ) ;

__attribute__((used)) static bool
loop_phi_node_p (tree phi)
{




  return loop_containing_stmt (phi)->header == bb_for_stmt (phi);
}
