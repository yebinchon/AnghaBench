
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro {struct macro* value; struct macro* name; int perm; } ;


 struct macro* LIST_FIRST (int *) ;
 struct macro* LIST_NEXT (struct macro*,int ) ;
 int LIST_REMOVE (struct macro*,int ) ;
 int free (struct macro*) ;
 int link ;
 int macros ;

__attribute__((used)) static void
macro_free_all(void)
{
 static struct macro *m, *m1;

 m = LIST_FIRST(&macros);
 while (m != ((void*)0)) {
  m1 = LIST_NEXT(m, link);
  if (!m->perm) {
   free(m->name);
   free(m->value);
   LIST_REMOVE(m, link);
   free(m);
  }
  m = m1;
 }
}
