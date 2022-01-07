
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DF_USES_GET (int ,unsigned int) ;
 int def_entry ;
 int df ;
 scalar_t__ dump_file ;
 int fprintf (scalar_t__,char*) ;
 int see_handle_relevant_defs () ;
 int see_handle_relevant_uses () ;
 int see_update_defs_relevancy () ;
 int see_update_leader_extra_info ;
 int see_update_uses_relevancy () ;
 int union_defs (int ,int ,int ,int ,int ) ;
 int use_entry ;
 unsigned int uses_num ;

__attribute__((used)) static bool
see_propagate_extensions_to_uses (void)
{
  unsigned int i = 0;
  int num_relevant_uses;
  int num_relevant_defs;

  if (dump_file)
    fprintf (dump_file,
      "* Phase 1: Propagate extensions to uses.  *\n");


  see_update_defs_relevancy ();
  see_update_uses_relevancy ();





  for (i = 0; i < uses_num; i++)
    union_defs (df, DF_USES_GET (df, i), def_entry, use_entry,
  see_update_leader_extra_info);



  num_relevant_uses = see_handle_relevant_uses ();

  if (num_relevant_uses < 0)
    return 0;



  num_relevant_defs = see_handle_relevant_defs ();

  if (num_relevant_defs < 0)
    return 0;

 return num_relevant_uses > 0 || num_relevant_defs > 0;
}
