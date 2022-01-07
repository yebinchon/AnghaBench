
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lmodule {int dummy; } ;
struct idrange {struct lmodule* owner; } ;


 struct idrange* TAILQ_FIRST (int *) ;
 struct idrange* TAILQ_NEXT (struct idrange*,int ) ;
 int TAILQ_REMOVE (int *,struct idrange*,int ) ;
 int free (struct idrange*) ;
 int idrange_list ;
 int link ;

__attribute__((used)) static void
reqid_flush(struct lmodule *mod)
{
 struct idrange *p, *p1;

 p = TAILQ_FIRST(&idrange_list);
 while (p != ((void*)0)) {
  p1 = TAILQ_NEXT(p, link);
  if (p->owner == mod) {
   TAILQ_REMOVE(&idrange_list, p, link);
   free(p);
  }
  p = p1;
 }
}
