
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nodelist {int dummy; } ;


 int EXP_CASE ;
 int EXP_TILDE ;
 int STACKSTRNUL (char*) ;
 int STADJUST (int,char*) ;




 int abort () ;
 char* argstr (char const*,struct nodelist**,int,int *) ;
 char* expdest ;
 int patmatch (char*,char*) ;
 int recordleft (char*,char*,char*) ;
 char* stackblock () ;

__attribute__((used)) static const char *
subevalvar_trim(const char *p, struct nodelist **restrict argbackq, int strloc,
    int subtype, int startloc)
{
 char *startp;
 char *loc = ((void*)0);
 char *str;
 int c = 0;
 int amount;

 p = argstr(p, argbackq, EXP_CASE | EXP_TILDE, ((void*)0));
 STACKSTRNUL(expdest);
 startp = stackblock() + startloc;
 str = stackblock() + strloc;

 switch (subtype) {
 case 131:
  for (loc = startp; loc < str; loc++) {
   c = *loc;
   *loc = '\0';
   if (patmatch(str, startp)) {
    *loc = c;
    recordleft(str, loc, startp);
    return p;
   }
   *loc = c;
  }
  break;

 case 130:
  for (loc = str - 1; loc >= startp;) {
   c = *loc;
   *loc = '\0';
   if (patmatch(str, startp)) {
    *loc = c;
    recordleft(str, loc, startp);
    return p;
   }
   *loc = c;
   loc--;
  }
  break;

 case 129:
  for (loc = str - 1; loc >= startp;) {
   if (patmatch(str, loc)) {
    amount = loc - expdest;
    STADJUST(amount, expdest);
    return p;
   }
   loc--;
  }
  break;

 case 128:
  for (loc = startp; loc < str - 1; loc++) {
   if (patmatch(str, loc)) {
    amount = loc - expdest;
    STADJUST(amount, expdest);
    return p;
   }
  }
  break;


 default:
  abort();
 }
 amount = (expdest - stackblock() - strloc) + 1;
 STADJUST(-amount, expdest);
 return p;
}
