
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int basic_block ;
struct TYPE_2__ {int removed_phis; int total_phis; } ;


 int NECESSARY (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ PHI_CHAIN (scalar_t__) ;
 int TDF_DETAILS ;
 int TDF_SLIM ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int fprintf (scalar_t__,char*) ;
 scalar_t__ phi_nodes (int ) ;
 int print_generic_stmt (scalar_t__,scalar_t__,int ) ;
 int remove_phi_node (scalar_t__,scalar_t__) ;
 TYPE_1__ stats ;

__attribute__((used)) static void
remove_dead_phis (basic_block bb)
{
  tree prev, phi;

  prev = NULL_TREE;
  phi = phi_nodes (bb);
  while (phi)
    {
      stats.total_phis++;

      if (! NECESSARY (phi))
 {
   tree next = PHI_CHAIN (phi);

   if (dump_file && (dump_flags & TDF_DETAILS))
     {
       fprintf (dump_file, "Deleting : ");
       print_generic_stmt (dump_file, phi, TDF_SLIM);
       fprintf (dump_file, "\n");
     }

   remove_phi_node (phi, prev);
   stats.removed_phis++;
   phi = next;
 }
      else
 {
   prev = phi;
   phi = PHI_CHAIN (phi);
 }
    }
}
