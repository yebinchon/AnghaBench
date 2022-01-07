
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITMAP_ALLOC (int *) ;
 int BITMAP_FREE (int ) ;
 int decide_instantiations () ;
 scalar_t__ find_candidates_for_sra () ;
 int gcc_obstack_init (int *) ;
 int * htab_create (int,int ,int ,int *) ;
 int htab_delete (int *) ;
 int needs_copy_in ;
 int obstack_free (int *,int *) ;
 int scalarize_function () ;
 int scan_function () ;
 int sra_candidates ;
 int sra_elt_eq ;
 int sra_elt_hash ;
 int sra_init_cache () ;
 int * sra_map ;
 int sra_obstack ;
 int sra_type_decomp_cache ;
 int sra_type_inst_cache ;
 unsigned int todoflags ;

__attribute__((used)) static unsigned int
tree_sra (void)
{

  todoflags = 0;
  gcc_obstack_init (&sra_obstack);
  sra_candidates = BITMAP_ALLOC (((void*)0));
  needs_copy_in = BITMAP_ALLOC (((void*)0));
  sra_init_cache ();
  sra_map = htab_create (101, sra_elt_hash, sra_elt_eq, ((void*)0));


  if (find_candidates_for_sra ())
    {
      scan_function ();
      decide_instantiations ();
      scalarize_function ();
    }


  htab_delete (sra_map);
  sra_map = ((void*)0);
  BITMAP_FREE (sra_candidates);
  BITMAP_FREE (needs_copy_in);
  BITMAP_FREE (sra_type_decomp_cache);
  BITMAP_FREE (sra_type_inst_cache);
  obstack_free (&sra_obstack, ((void*)0));
  return todoflags;
}
