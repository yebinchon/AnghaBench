
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFFILE ;
 int HT_free (int ,int ) ;
 int _chdir (char*) ;
 char* all_chains ;
 size_t all_chains_ptr ;
 int chdir (char*) ;
 int fprintf (int ,char*,char*) ;
 int free_key ;
 int free_test_case_contents (char*) ;
 int free_trust_anchor ;
 int keys ;
 scalar_t__ max_dp_usage ;
 scalar_t__ max_rp_usage ;
 int memcpy (char*,char const*,size_t) ;
 int printf (char*,unsigned int) ;
 int process_conf_file (int ) ;
 int run_test_case (char*) ;
 int stderr ;
 int strlen (char const*) ;
 int test_name_extraction () ;
 int trust_anchors ;
 int xfree (char*) ;
 char* xmalloc (size_t) ;

int
main(int argc, const char *argv[])
{
 size_t u;
 (void)argc;
 (void)argv;


 process_conf_file(CONFFILE);

 max_dp_usage = 0;
 max_rp_usage = 0;
 for (u = 0; u < all_chains_ptr; u ++) {
  run_test_case(&all_chains[u]);
 }
 test_name_extraction();

 printf("Maximum data stack usage:    %u\n", (unsigned)max_dp_usage);
 printf("Maximum return stack usage:  %u\n", (unsigned)max_rp_usage);

 HT_free(keys, free_key);
 HT_free(trust_anchors, free_trust_anchor);
 for (u = 0; u < all_chains_ptr; u ++) {
  free_test_case_contents(&all_chains[u]);
 }
 xfree(all_chains);

 return 0;
}
