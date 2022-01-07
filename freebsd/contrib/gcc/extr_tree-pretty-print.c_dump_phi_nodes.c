
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int pretty_printer ;
typedef int basic_block ;


 int INDENT (int) ;
 scalar_t__ PHI_CHAIN (scalar_t__) ;
 int PHI_RESULT (scalar_t__) ;
 int TDF_VOPS ;
 int dump_generic_node (int *,scalar_t__,int,int,int) ;
 scalar_t__ is_gimple_reg (int ) ;
 scalar_t__ phi_nodes (int ) ;
 int pp_newline (int *) ;
 int pp_string (int *,char*) ;

__attribute__((used)) static void
dump_phi_nodes (pretty_printer *buffer, basic_block bb, int indent, int flags)
{
  tree phi = phi_nodes (bb);
  if (!phi)
    return;

  for (; phi; phi = PHI_CHAIN (phi))
    {
      if (is_gimple_reg (PHI_RESULT (phi)) || (flags & TDF_VOPS))
        {
          INDENT (indent);
          pp_string (buffer, "# ");
          dump_generic_node (buffer, phi, indent, flags, 0);
          pp_newline (buffer);
        }
    }
}
