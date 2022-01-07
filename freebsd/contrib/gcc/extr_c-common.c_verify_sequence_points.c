
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct tlist {int dummy; } ;


 int gcc_obstack_init (int *) ;
 scalar_t__ obstack_alloc (int *,int ) ;
 int obstack_free (int *,char*) ;
 scalar_t__ save_expr_cache ;
 char* tlist_firstobj ;
 int tlist_obstack ;
 int verify_tree (int ,struct tlist**,struct tlist**,int ) ;
 int warn_for_collisions (struct tlist*) ;
 scalar_t__ warned_ids ;

void
verify_sequence_points (tree expr)
{
  struct tlist *before_sp = 0, *after_sp = 0;

  warned_ids = 0;
  save_expr_cache = 0;
  if (tlist_firstobj == 0)
    {
      gcc_obstack_init (&tlist_obstack);
      tlist_firstobj = (char *) obstack_alloc (&tlist_obstack, 0);
    }

  verify_tree (expr, &before_sp, &after_sp, 0);
  warn_for_collisions (after_sp);
  obstack_free (&tlist_obstack, tlist_firstobj);
}
