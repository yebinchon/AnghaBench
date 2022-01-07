
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CDI_DOMINATORS ;
 int antloc ;
 int comp ;
 int free_dominance_info (int ) ;
 int hoist_exprs ;
 int hoist_vbein ;
 int hoist_vbeout ;
 int sbitmap_vector_free (int ) ;
 int transp ;
 int transpout ;

__attribute__((used)) static void
free_code_hoist_mem (void)
{
  sbitmap_vector_free (antloc);
  sbitmap_vector_free (transp);
  sbitmap_vector_free (comp);

  sbitmap_vector_free (hoist_vbein);
  sbitmap_vector_free (hoist_vbeout);
  sbitmap_vector_free (hoist_exprs);
  sbitmap_vector_free (transpout);

  free_dominance_info (CDI_DOMINATORS);
}
