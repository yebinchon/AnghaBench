
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nodelist {int dummy; } ;


 char const CTLENDVAR ;
 int EXP_TILDE ;
 int STACKSTRNUL (int ) ;
 int STADJUST (int,int ) ;

 int VSNUL ;

 int abort () ;
 char* argstr (char const*,struct nodelist**,int ,int *) ;
 int error (char*,...) ;
 int expdest ;
 int out2 ;
 int outfmt (int ,char*,char*) ;
 int setvar (char const*,char*,int ) ;
 char* stackblock () ;

__attribute__((used)) static const char *
subevalvar_misc(const char *p, struct nodelist **restrict argbackq,
    const char *var, int subtype, int startloc, int varflags)
{
 const char *end;
 char *startp;
 int amount;

 end = argstr(p, argbackq, EXP_TILDE, ((void*)0));
 STACKSTRNUL(expdest);
 startp = stackblock() + startloc;

 switch (subtype) {
 case 129:
  setvar(var, startp, 0);
  amount = startp - expdest;
  STADJUST(amount, expdest);
  return end;

 case 128:
  if (*p != CTLENDVAR) {
   outfmt(out2, "%s\n", startp);
   error((char *)((void*)0));
  }
  error("%.*s: parameter %snot set", (int)(p - var - 1),
        var, (varflags & VSNUL) ? "null or " : "");

 default:
  abort();
 }
}
