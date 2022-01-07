
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arglist {int count; int * args; } ;


 int INTOFF ;
 int INTON ;
 int appendarglist (struct arglist*,char*) ;
 int expdir ;
 int expmeta (int ,char*,struct arglist*) ;
 int expsortcmp ;
 int qsort (int *,int,int,int ) ;
 int rmescapes (char*) ;

__attribute__((used)) static void
expandmeta(char *pattern, struct arglist *dstlist)
{
 char *p;
 int firstmatch;
 char c;

 firstmatch = dstlist->count;
 p = pattern;
 for (; (c = *p) != '\0'; p++) {

  if (c == '*' || c == '?' || c == '[') {
   INTOFF;
   expmeta(expdir, pattern, dstlist);
   INTON;
   break;
  }
 }
 if (dstlist->count == firstmatch) {



  rmescapes(pattern);
  appendarglist(dstlist, pattern);
 } else {
  qsort(&dstlist->args[firstmatch],
      dstlist->count - firstmatch,
      sizeof(dstlist->args[0]), expsortcmp);
 }
}
