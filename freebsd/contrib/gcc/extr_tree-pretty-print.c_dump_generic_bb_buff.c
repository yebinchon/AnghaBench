
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int pretty_printer ;
typedef int block_stmt_iterator ;
typedef int basic_block ;


 int INDENT (int) ;
 scalar_t__ LABEL_EXPR ;
 int TDF_BLOCKS ;
 scalar_t__ TREE_CODE (int ) ;
 int bsi_end_p (int ) ;
 int bsi_next (int *) ;
 int bsi_start (int ) ;
 int bsi_stmt (int ) ;
 int dump_bb_end (int *,int ,int,int) ;
 int dump_bb_header (int *,int ,int,int) ;
 int dump_generic_node (int *,int ,int,int,int) ;
 int dump_implicit_edges (int *,int ,int,int) ;
 int dump_phi_nodes (int *,int ,int,int) ;
 int pp_newline (int *) ;

__attribute__((used)) static void
dump_generic_bb_buff (pretty_printer *buffer, basic_block bb,
        int indent, int flags)
{
  block_stmt_iterator bsi;
  tree stmt;
  int label_indent = indent - 2;

  if (label_indent < 0)
    label_indent = 0;

  dump_bb_header (buffer, bb, indent, flags);

  dump_phi_nodes (buffer, bb, indent, flags);

  for (bsi = bsi_start (bb); !bsi_end_p (bsi); bsi_next (&bsi))
    {
      int curr_indent;

      stmt = bsi_stmt (bsi);

      curr_indent = TREE_CODE (stmt) == LABEL_EXPR ? label_indent : indent;

      INDENT (curr_indent);
      dump_generic_node (buffer, stmt, curr_indent, flags, 1);
      pp_newline (buffer);
    }

  dump_implicit_edges (buffer, bb, indent, flags);

  if (flags & TDF_BLOCKS)
    dump_bb_end (buffer, bb, indent, flags);
}
