
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dump_file ;
 int fprintf (scalar_t__,char*,...) ;
 int last_bb ;
 scalar_t__* see_bb_splay_ar ;
 int see_handle_extensions_for_one_ref ;
 int splay_tree_foreach (scalar_t__,int ,int *) ;

__attribute__((used)) static void
see_merge_and_eliminate_extensions (void)
{
  int i = 0;

  if (dump_file)
    fprintf (dump_file,
      "* Phase 2: Merge and eliminate locally redundant extensions.  *\n");


  for (i = 0; i < last_bb; i++)
    {
      if (see_bb_splay_ar[i])
 {
   if (dump_file)
     fprintf (dump_file, "Handling references for bb %d\n", i);


   splay_tree_foreach (see_bb_splay_ar[i],
         see_handle_extensions_for_one_ref, ((void*)0));
 }
    }
}
