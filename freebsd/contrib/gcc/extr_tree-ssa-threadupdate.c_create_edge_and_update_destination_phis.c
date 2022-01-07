
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct redirection_data {TYPE_1__* outgoing_edge; TYPE_4__* dup_block; } ;
typedef TYPE_2__* edge ;
struct TYPE_8__ {int count; } ;
struct TYPE_7__ {int dest; int count; int probability; } ;
struct TYPE_6__ {int dest_idx; int dest; } ;


 int EDGE_FALLTHRU ;
 int PHI_ARG_DEF (scalar_t__,int) ;
 scalar_t__ PHI_CHAIN (scalar_t__) ;
 int REG_BR_PROB_BASE ;
 int add_phi_arg (scalar_t__,int ,TYPE_2__*) ;
 TYPE_2__* make_edge (TYPE_4__*,int ,int ) ;
 scalar_t__ phi_nodes (int ) ;

__attribute__((used)) static void
create_edge_and_update_destination_phis (struct redirection_data *rd)
{
  edge e = make_edge (rd->dup_block, rd->outgoing_edge->dest, EDGE_FALLTHRU);
  tree phi;

  e->probability = REG_BR_PROB_BASE;
  e->count = rd->dup_block->count;





  for (phi = phi_nodes (e->dest); phi; phi = PHI_CHAIN (phi))
    {
      int indx = rd->outgoing_edge->dest_idx;
      add_phi_arg (phi, PHI_ARG_DEF (phi, indx), e);
    }
}
