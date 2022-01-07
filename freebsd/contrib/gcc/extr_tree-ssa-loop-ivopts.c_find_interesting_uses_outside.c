
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct ivopts_data {int dummy; } ;
typedef TYPE_1__* edge ;
struct TYPE_4__ {int dest; } ;


 scalar_t__ PHI_ARG_DEF_FROM_EDGE (scalar_t__,TYPE_1__*) ;
 scalar_t__ PHI_CHAIN (scalar_t__) ;
 int find_interesting_uses_op (struct ivopts_data*,scalar_t__) ;
 scalar_t__ phi_nodes (int ) ;

__attribute__((used)) static void
find_interesting_uses_outside (struct ivopts_data *data, edge exit)
{
  tree phi, def;

  for (phi = phi_nodes (exit->dest); phi; phi = PHI_CHAIN (phi))
    {
      def = PHI_ARG_DEF_FROM_EDGE (phi, exit);
      find_interesting_uses_op (data, def);
    }
}
