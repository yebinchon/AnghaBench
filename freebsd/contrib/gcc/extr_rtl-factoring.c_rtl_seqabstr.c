
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEANUP_CROSSJUMP ;
 int CLEANUP_EXPENSIVE ;
 int CLEANUP_UPDATE_LIFE ;
 int HASH_INIT ;
 int PROP_DEATH_NOTES ;
 int PROP_KILL_DEAD_CODE ;
 int PROP_SCAN_DEAD_CODE ;
 int abstract_best_seq () ;
 int cleanup_cfg (int) ;
 int collect_pattern_seqs () ;
 int compute_init_costs () ;
 int count_or_remove_death_notes (int *,int) ;
 int dump_best_pattern_seq (int) ;
 int dump_pattern_seqs () ;
 int fill_hash_bucket () ;
 scalar_t__ flag_crossjumping ;
 int hash_buckets ;
 int htab_create (int ,int ,int ,int ) ;
 int htab_del_bucket ;
 int htab_delete (int ) ;
 int htab_eq_bucket ;
 int htab_hash_bucket ;
 int life_analysis (int) ;
 int pattern_seqs ;
 int recompute_gain () ;
 int update_pattern_seqs () ;

__attribute__((used)) static void
rtl_seqabstr (void)
{
  int iter;


  hash_buckets = htab_create (HASH_INIT, htab_hash_bucket , htab_eq_bucket ,
                              htab_del_bucket);
  fill_hash_bucket ();


  compute_init_costs ();


  collect_pattern_seqs ();
  dump_pattern_seqs ();


  for (iter = 1;; iter++)
    {


      recompute_gain ();
      if (!pattern_seqs)
        break;
      dump_best_pattern_seq (iter);


      update_pattern_seqs ();

      abstract_best_seq ();
    }


  htab_delete (hash_buckets);

  if (iter > 1)
    {

      count_or_remove_death_notes (((void*)0), 1);

      life_analysis (PROP_DEATH_NOTES | PROP_SCAN_DEAD_CODE
       | PROP_KILL_DEAD_CODE);


      cleanup_cfg (CLEANUP_EXPENSIVE |
                   CLEANUP_UPDATE_LIFE |
                   (flag_crossjumping ? CLEANUP_CROSSJUMP : 0));
    }
}
