
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* edge ;
struct TYPE_3__ {int flags; } ;


 int EDGE_IRREDUCIBLE_LOOP ;
 TYPE_1__* PHI_ARG_EDGE (int ,int) ;

__attribute__((used)) static bool
backedge_phi_arg_p (tree phi, int i)
{
  edge e = PHI_ARG_EDGE (phi, i);




  if (e->flags & EDGE_IRREDUCIBLE_LOOP)
    return 1;

  return 0;
}
