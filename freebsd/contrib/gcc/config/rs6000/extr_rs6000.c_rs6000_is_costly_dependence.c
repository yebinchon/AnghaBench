
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ REG_NOTE_KIND (int ) ;
 scalar_t__ all_deps_costly ;
 scalar_t__ is_load_insn (int ) ;
 scalar_t__ is_store_insn (int ) ;
 scalar_t__ max_dep_latency ;
 scalar_t__ no_dep_costly ;
 scalar_t__ rs6000_sched_costly_dep ;
 scalar_t__ store_to_load_dep_costly ;
 scalar_t__ true_store_to_load_dep_costly ;

__attribute__((used)) static bool
rs6000_is_costly_dependence (rtx insn, rtx next, rtx link, int cost,
        int distance)
{



  if (rs6000_sched_costly_dep == no_dep_costly)
    return 0;




  if (rs6000_sched_costly_dep == all_deps_costly)
    return 1;

  if (rs6000_sched_costly_dep == store_to_load_dep_costly
      && is_load_insn (next)
      && is_store_insn (insn))

    return 1;

  if (rs6000_sched_costly_dep == true_store_to_load_dep_costly
      && is_load_insn (next)
      && is_store_insn (insn)
      && (!link || (int) REG_NOTE_KIND (link) == 0))


     return 1;



  if (rs6000_sched_costly_dep <= max_dep_latency
      && ((cost - distance) >= (int)rs6000_sched_costly_dep))
    return 1;

  return 0;
}
