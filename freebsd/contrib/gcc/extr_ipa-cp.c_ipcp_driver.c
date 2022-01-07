
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cgraph_remove_unreachable_nodes (int,int *) ;
 scalar_t__ dump_file ;
 int fprintf (scalar_t__,char*) ;
 int ipa_edges_create () ;
 int ipa_edges_free () ;
 int ipa_free () ;
 int ipa_nodes_create () ;
 int ipa_nodes_free () ;
 int ipcp_init_stage () ;
 int ipcp_insert_stage () ;
 int ipcp_iterate_stage () ;
 int ipcp_profile_print (scalar_t__) ;
 int ipcp_structures_print (scalar_t__) ;

unsigned int
ipcp_driver (void)
{
  if (dump_file)
    fprintf (dump_file, "\nIPA constant propagation start:\n");
  ipa_nodes_create ();
  ipa_edges_create ();


  ipcp_init_stage ();
  if (dump_file)
    {
      fprintf (dump_file, "\nIPA structures before propagation:\n");
      ipcp_structures_print (dump_file);
    }

  ipcp_iterate_stage ();
  if (dump_file)
    {
      fprintf (dump_file, "\nIPA structures after propagation:\n");
      ipcp_structures_print (dump_file);
      fprintf (dump_file, "\nProfiling info before insert stage:\n");
      ipcp_profile_print (dump_file);
    }

  ipcp_insert_stage ();
  if (dump_file)
    {
      fprintf (dump_file, "\nProfiling info after insert stage:\n");
      ipcp_profile_print (dump_file);
    }

  ipa_free ();
  ipa_nodes_free ();
  ipa_edges_free ();
  if (dump_file)
    fprintf (dump_file, "\nIPA constant propagation end\n");
  cgraph_remove_unreachable_nodes (1, ((void*)0));
  return 0;
}
