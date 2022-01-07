
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct dse_global_data {int stores; } ;
struct dse_block_local_data {int stores; } ;
struct dom_walk_data {struct dse_global_data* global_data; int block_data_stack; } ;
typedef int basic_block ;


 scalar_t__ PHI_CHAIN (scalar_t__) ;
 int PHI_RESULT (scalar_t__) ;
 struct dse_block_local_data* VEC_last (int ,int ) ;
 int get_stmt_uid (scalar_t__) ;
 int is_gimple_reg (int ) ;
 scalar_t__ phi_nodes (int ) ;
 int record_voperand_set (int ,int *,int ) ;
 int void_p ;

__attribute__((used)) static void
dse_record_phis (struct dom_walk_data *walk_data, basic_block bb)
{
  struct dse_block_local_data *bd
    = VEC_last (void_p, walk_data->block_data_stack);
  struct dse_global_data *dse_gd = walk_data->global_data;
  tree phi;

  for (phi = phi_nodes (bb); phi; phi = PHI_CHAIN (phi))
    if (!is_gimple_reg (PHI_RESULT (phi)))
      record_voperand_set (dse_gd->stores,
      &bd->stores,
      get_stmt_uid (phi));
}
