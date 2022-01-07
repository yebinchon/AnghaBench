
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef void* tree ;
struct occurrence {int num_divisions; scalar_t__ bb; struct occurrence* next; struct occurrence* children; void* recip_def; void* recip_def_stmt; scalar_t__ bb_has_division; } ;
struct TYPE_9__ {scalar_t__ bb; } ;
typedef TYPE_1__ block_stmt_iterator ;


 int BSI_NEW_STMT ;
 int BSI_SAME_STMT ;
 int MODIFY_EXPR ;
 int RDIV_EXPR ;
 void* TREE_TYPE (void*) ;
 TYPE_1__ bsi_after_labels (scalar_t__) ;
 int bsi_end_p (TYPE_1__) ;
 int bsi_insert_after (TYPE_1__*,void*,int ) ;
 int bsi_insert_before (TYPE_1__*,void*,int ) ;
 int bsi_next (TYPE_1__*) ;
 int bsi_stmt (TYPE_1__) ;
 void* build2 (int ,int ,void*,int ) ;
 int build_one_cst (void*) ;
 int flag_trapping_math ;
 int fold_build2 (int ,void*,int ,void*) ;
 int is_division_by (int ,void*) ;
 void* make_rename_temp (void*,char*) ;
 int void_type_node ;

__attribute__((used)) static void
insert_reciprocals (block_stmt_iterator *def_bsi, struct occurrence *occ,
      tree def, tree recip_def, int threshold)
{
  tree type, new_stmt;
  block_stmt_iterator bsi;
  struct occurrence *occ_child;

  if (!recip_def
      && (occ->bb_has_division || !flag_trapping_math)
      && occ->num_divisions >= threshold)
    {

      type = TREE_TYPE (def);
      recip_def = make_rename_temp (type, "reciptmp");
      new_stmt = build2 (MODIFY_EXPR, void_type_node, recip_def,
           fold_build2 (RDIV_EXPR, type, build_one_cst (type),
          def));


      if (occ->bb_has_division)
        {

          bsi = bsi_after_labels (occ->bb);
          while (!bsi_end_p (bsi) && !is_division_by (bsi_stmt (bsi), def))
     bsi_next (&bsi);

          bsi_insert_before (&bsi, new_stmt, BSI_SAME_STMT);
        }
      else if (def_bsi && occ->bb == def_bsi->bb)
        {




          bsi_insert_after (def_bsi, new_stmt, BSI_NEW_STMT);
        }
      else
        {

          bsi = bsi_after_labels (occ->bb);
          bsi_insert_before (&bsi, new_stmt, BSI_SAME_STMT);
        }

      occ->recip_def_stmt = new_stmt;
    }

  occ->recip_def = recip_def;
  for (occ_child = occ->children; occ_child; occ_child = occ_child->next)
    insert_reciprocals (def_bsi, occ_child, def, recip_def, threshold);
}
