
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alias {int val; } ;


 int CHKALIAS ;
 int CHKKWD ;
 int CHKNL ;
 int KWDOFFSET ;
 int TNL ;
 int TNOT ;
 int TRACE (char*) ;
 int TWORD ;
 int checkkwd ;
 scalar_t__ equal (char const* const,char const*) ;
 int lasttoken ;
 struct alias* lookupalias (char const*,int) ;
 int parseheredoc () ;
 char const* const* parsekwd ;
 int pushstring (int ,int ,struct alias*) ;
 int quoteflag ;
 int strlen (int ) ;
 int * tokname ;
 int tokpushback ;
 char const* wordtext ;
 int xxreadtoken () ;

__attribute__((used)) static int
readtoken(void)
{
 int t;
 struct alias *ap;




 top:
 t = xxreadtoken();




 if (checkkwd & CHKNL) {
  while (t == TNL) {
   parseheredoc();
   t = xxreadtoken();
  }
 }




 if (t == TWORD && !quoteflag)
 {
  const char * const *pp;

  if (checkkwd & CHKKWD)
   for (pp = parsekwd; *pp; pp++) {
    if (**pp == *wordtext && equal(*pp, wordtext))
    {
     lasttoken = t = pp - parsekwd + KWDOFFSET;
     TRACE(("keyword %s recognized\n", tokname[t]));
     goto out;
    }
   }
  if (checkkwd & CHKALIAS &&
      (ap = lookupalias(wordtext, 1)) != ((void*)0)) {
   pushstring(ap->val, strlen(ap->val), ap);
   goto top;
  }
 }
out:
 if (t != TNOT)
  checkkwd = 0;







 return (t);
}
