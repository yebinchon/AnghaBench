
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lmodule {int dummy; } ;
struct community {struct community* string; struct lmodule* owner; } ;


 struct community* TAILQ_FIRST (int *) ;
 struct community* TAILQ_NEXT (struct community*,int ) ;
 int TAILQ_REMOVE (int *,struct community*,int ) ;
 int community_list ;
 int free (struct community*) ;
 int link ;

__attribute__((used)) static void
comm_flush(struct lmodule *mod)
{
 struct community *p, *p1;

 p = TAILQ_FIRST(&community_list);
 while (p != ((void*)0)) {
  p1 = TAILQ_NEXT(p, link);
  if (p->owner == mod) {
   free(p->string);
   TAILQ_REMOVE(&community_list, p, link);
   free(p);
  }
  p = p1;
 }
}
