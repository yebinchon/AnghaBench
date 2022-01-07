
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct eh_region {int dummy; } ;
typedef int basic_block ;


 int EDGE_ABNORMAL ;
 int EDGE_EH ;
 int bb_for_stmt (scalar_t__) ;
 scalar_t__ get_eh_region_tree_label (struct eh_region*) ;
 int label_to_block (scalar_t__) ;
 int make_edge (int ,int ,int) ;

__attribute__((used)) static void
make_eh_edge (struct eh_region *region, void *data)
{
  tree stmt, lab;
  basic_block src, dst;

  stmt = (tree) data;
  lab = get_eh_region_tree_label (region);

  src = bb_for_stmt (stmt);
  dst = label_to_block (lab);

  make_edge (src, dst, EDGE_ABNORMAL | EDGE_EH);
}
