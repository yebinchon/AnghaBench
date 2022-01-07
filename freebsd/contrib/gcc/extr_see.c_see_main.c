
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dump_file ;
 int fprintf (scalar_t__,char*,...) ;
 int htab_traverse (scalar_t__,int ,int *) ;
 int init_recog () ;
 int last_bb ;
 scalar_t__* see_bb_hash_ar ;
 int see_commit_changes () ;
 int see_execute_LCM () ;
 int see_free_data_structures () ;
 int see_initialize_data_structures () ;
 int see_merge_and_eliminate_extensions () ;
 scalar_t__ see_pre_extension_hash ;
 int see_print_pre_extension_expr ;
 int see_print_register_properties ;
 int see_propagate_extensions_to_uses () ;

__attribute__((used)) static void
see_main (void)
{
  bool cont = 0;
  int i = 0;


  see_initialize_data_structures ();


  cont = see_propagate_extensions_to_uses ();

  if (cont)
    {
      init_recog ();


      see_merge_and_eliminate_extensions ();


      see_execute_LCM ();


      see_commit_changes ();

      if (dump_file)
 {

   fprintf (dump_file, "see_pre_extension_hash:\n");
   htab_traverse (see_pre_extension_hash, see_print_pre_extension_expr,
          ((void*)0));

   for (i = 0; i < last_bb; i++)
     {
        if (see_bb_hash_ar[i])


  {
    fprintf (dump_file,
      "Searching register properties in bb %d\n", i);
    htab_traverse (see_bb_hash_ar[i],
       see_print_register_properties, ((void*)0));
  }
     }
 }
    }


  see_free_data_structures ();
}
