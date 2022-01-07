
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alias {char* name; struct alias* next; } ;


 int ATABSIZE ;
 int INTOFF ;
 int INTON ;
 int aliases ;
 struct alias** atab ;
 int ckfree (struct alias**) ;
 struct alias** ckmalloc (int) ;
 int comparealiases ;
 scalar_t__ int_pending () ;
 int printalias (struct alias*) ;
 int qsort (struct alias**,int,int,int ) ;

__attribute__((used)) static void
printaliases(void)
{
 int i, j;
 struct alias **sorted, *ap;

 INTOFF;
 sorted = ckmalloc(aliases * sizeof(*sorted));
 j = 0;
 for (i = 0; i < ATABSIZE; i++)
  for (ap = atab[i]; ap; ap = ap->next)
   if (*ap->name != '\0')
    sorted[j++] = ap;
 qsort(sorted, aliases, sizeof(*sorted), comparealiases);
 for (i = 0; i < aliases; i++) {
  printalias(sorted[i]);
  if (int_pending())
   break;
 }
 ckfree(sorted);
 INTON;
}
