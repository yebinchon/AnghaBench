
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct see_pre_extension_expr {int dummy; } ;
typedef int * PTR ;


 int commit_edge_insertions () ;
 int * df ;
 int df_finish (int *) ;
 scalar_t__ dump_file ;
 int fprintf (scalar_t__,char*) ;
 int free (struct see_pre_extension_expr**) ;
 size_t htab_elements (int ) ;
 int htab_traverse (int ,int ,int *) ;
 int last_bb ;
 scalar_t__* see_bb_splay_ar ;
 int see_commit_ref_changes ;
 int see_map_extension ;
 int see_pre_delete_extension ;
 int see_pre_extension_hash ;
 int see_pre_insert_extensions (struct see_pre_extension_expr**) ;
 int splay_tree_foreach (scalar_t__,int ,int *) ;
 struct see_pre_extension_expr** xcalloc (size_t,int) ;

__attribute__((used)) static void
see_commit_changes (void)
{
  struct see_pre_extension_expr **index_map;
  size_t pre_extension_num = htab_elements (see_pre_extension_hash);
  bool did_insert = 0;
  int i;

  index_map = xcalloc (pre_extension_num,
           sizeof (struct see_pre_extension_expr *));

  if (dump_file)
    fprintf (dump_file,
      "* Phase 4: Commit changes to the insn stream.  *\n");


  htab_traverse (see_pre_extension_hash, see_map_extension, (PTR) index_map);



  htab_traverse (see_pre_extension_hash, see_pre_delete_extension, ((void*)0));



  df_finish (df);
  df = ((void*)0);


  did_insert = see_pre_insert_extensions (index_map);

  if (did_insert)
    commit_edge_insertions ();


  for (i = 0; i < last_bb; i++)
    {
      if (see_bb_splay_ar[i])
 {


   splay_tree_foreach (see_bb_splay_ar[i],
         see_commit_ref_changes, ((void*)0));
 }
    }

  free (index_map);
}
