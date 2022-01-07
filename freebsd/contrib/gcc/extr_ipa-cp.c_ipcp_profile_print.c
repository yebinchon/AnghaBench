
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*) ;
 int ipcp_profile_bb_print (int *) ;
 int ipcp_profile_cs_count_print (int *) ;
 int ipcp_profile_edge_print (int *) ;
 int ipcp_profile_mt_count_print (int *) ;

__attribute__((used)) static void
ipcp_profile_print (FILE * f)
{
  fprintf (f, "\nNODE COUNTS :\n");
  ipcp_profile_mt_count_print (f);
  fprintf (f, "\nCS COUNTS stage:\n");
  ipcp_profile_cs_count_print (f);
  fprintf (f, "\nBB COUNTS and FREQUENCIES :\n");
  ipcp_profile_bb_print (f);
  fprintf (f, "\nCFG EDGES COUNTS and PROBABILITIES :\n");
  ipcp_profile_edge_print (f);
}
