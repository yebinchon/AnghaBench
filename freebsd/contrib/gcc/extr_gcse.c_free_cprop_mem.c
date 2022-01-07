
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cprop_absaltered ;
 int cprop_avin ;
 int cprop_avout ;
 int cprop_pavloc ;
 int sbitmap_vector_free (int ) ;

__attribute__((used)) static void
free_cprop_mem (void)
{
  sbitmap_vector_free (cprop_pavloc);
  sbitmap_vector_free (cprop_absaltered);
  sbitmap_vector_free (cprop_avin);
  sbitmap_vector_free (cprop_avout);
}
