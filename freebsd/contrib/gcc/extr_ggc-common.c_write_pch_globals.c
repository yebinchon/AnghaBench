
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct traversal_state {int f; } ;
struct ptr_data {void* new_addr; } ;
struct ggc_root_tab {size_t nelt; size_t stride; int * base; } ;


 int POINTER_HASH (void*) ;
 int fatal_error (char*) ;
 int fwrite (void**,int,int,int ) ;
 struct ptr_data* htab_find_with_hash (int ,void*,int ) ;
 int saving_htab ;

__attribute__((used)) static void
write_pch_globals (const struct ggc_root_tab * const *tab,
     struct traversal_state *state)
{
  const struct ggc_root_tab *const *rt;
  const struct ggc_root_tab *rti;
  size_t i;

  for (rt = tab; *rt; rt++)
    for (rti = *rt; rti->base != ((void*)0); rti++)
      for (i = 0; i < rti->nelt; i++)
 {
   void *ptr = *(void **)((char *)rti->base + rti->stride * i);
   struct ptr_data *new_ptr;
   if (ptr == ((void*)0) || ptr == (void *)1)
     {
       if (fwrite (&ptr, sizeof (void *), 1, state->f)
    != 1)
  fatal_error ("can't write PCH file: %m");
     }
   else
     {
       new_ptr = htab_find_with_hash (saving_htab, ptr,
          POINTER_HASH (ptr));
       if (fwrite (&new_ptr->new_addr, sizeof (void *), 1, state->f)
    != 1)
  fatal_error ("can't write PCH file: %m");
     }
 }
}
