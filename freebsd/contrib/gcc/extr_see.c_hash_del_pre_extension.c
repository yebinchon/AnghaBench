
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct see_pre_extension_expr {struct see_pre_extension_expr* next; struct see_pre_extension_expr* avail_occr; struct see_pre_extension_expr* antic_occr; } ;
struct see_occr {struct see_occr* next; struct see_occr* avail_occr; struct see_occr* antic_occr; } ;


 int free (struct see_pre_extension_expr*) ;

__attribute__((used)) static void
hash_del_pre_extension (void *p)
{
  struct see_pre_extension_expr *extension = p;
  struct see_occr *curr_occr = extension->antic_occr;
  struct see_occr *next_occr = ((void*)0);


  while (curr_occr)
    {
      next_occr = curr_occr->next;
      free (curr_occr);
      curr_occr = next_occr;
    }


  curr_occr = extension->avail_occr;
  while (curr_occr)
    {
      next_occr = curr_occr->next;
      free (curr_occr);
      curr_occr = next_occr;
    }


  free (extension);
}
