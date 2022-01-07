
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_noreturn_fake_exit_edges () ;
 void* ae_kill ;
 void* antloc ;
 void* comp ;
 scalar_t__ dump_file ;
 int edge_list ;
 int fprintf (scalar_t__,char*) ;
 size_t htab_elements (int ) ;
 int last_bb ;
 int pre_delete_map ;
 int pre_edge_lcm (size_t,void*,void*,void*,void*,int *,int *) ;
 int pre_insert_map ;
 int remove_fake_exit_edges () ;
 void* sbitmap_vector_alloc (int,size_t) ;
 int sbitmap_vector_ones (void*,int) ;
 int sbitmap_vector_zero (void*,int) ;
 int see_analyze_ref_local_prop ;
 scalar_t__* see_bb_splay_ar ;
 int see_pre_extension_hash ;
 int splay_tree_foreach (scalar_t__,int ,int *) ;
 void* transp ;

__attribute__((used)) static void
see_execute_LCM (void)
{
  size_t pre_extension_num = htab_elements (see_pre_extension_hash);
  int i = 0;

  if (dump_file)
    fprintf (dump_file,
      "* Phase 3: Eliminate globally redundant extensions.  *\n");


  transp = sbitmap_vector_alloc (last_bb, pre_extension_num);
  comp = sbitmap_vector_alloc (last_bb, pre_extension_num);
  antloc = sbitmap_vector_alloc (last_bb, pre_extension_num);
  ae_kill = sbitmap_vector_alloc (last_bb, pre_extension_num);
  sbitmap_vector_ones (transp, last_bb);
  sbitmap_vector_zero (comp, last_bb);
  sbitmap_vector_zero (antloc, last_bb);
  sbitmap_vector_zero (ae_kill, last_bb);


  for (i = 0; i < last_bb; i++)
    {
      if (see_bb_splay_ar[i])
 {


   splay_tree_foreach (see_bb_splay_ar[i],
         see_analyze_ref_local_prop, ((void*)0));
 }
    }


  add_noreturn_fake_exit_edges ();


  edge_list = pre_edge_lcm (pre_extension_num, transp, comp, antloc,
         ae_kill, &pre_insert_map, &pre_delete_map);


  remove_fake_exit_edges ();
}
