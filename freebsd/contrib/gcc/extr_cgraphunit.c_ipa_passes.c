
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int all_ipa_passes ;
 int bitmap_obstack_initialize (int *) ;
 int bitmap_obstack_release (int *) ;
 int * cfun ;
 int execute_ipa_pass_list (int ) ;
 int tree_register_cfg_hooks () ;

__attribute__((used)) static void
ipa_passes (void)
{
  cfun = ((void*)0);
  tree_register_cfg_hooks ();
  bitmap_obstack_initialize (((void*)0));
  execute_ipa_pass_list (all_ipa_passes);
  bitmap_obstack_release (((void*)0));
}
