
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int * LstNode ;
typedef scalar_t__ Boolean ;


 scalar_t__ EXPAND_VARS ;
 scalar_t__ FALSE ;
 int Fatal (char*,int ,char*) ;
 scalar_t__ Lst_Datum (int *) ;
 int * Lst_First (int ) ;
 int * Lst_Succ (int *) ;
 scalar_t__ TRUE ;
 int VARF_WANTRES ;
 int VAR_GLOBAL ;
 char* Var_Subst (int *,char*,int ,int ) ;
 char* Var_Value (char*,int ,char**) ;
 scalar_t__ debugVflag ;
 int free (char*) ;
 scalar_t__ getBoolean (char*,scalar_t__) ;
 scalar_t__ printVars ;
 int printf (char*,char*) ;
 int progname ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ strchr (char*,char) ;
 int variables ;

__attribute__((used)) static void
doPrintVars(void)
{
 LstNode ln;
 Boolean expandVars;

 if (printVars == EXPAND_VARS)
  expandVars = TRUE;
 else if (debugVflag)
  expandVars = FALSE;
 else
  expandVars = getBoolean(".MAKE.EXPAND_VARIABLES", FALSE);

 for (ln = Lst_First(variables); ln != ((void*)0);
     ln = Lst_Succ(ln)) {
  char *var = (char *)Lst_Datum(ln);
  char *value;
  char *p1;

  if (strchr(var, '$')) {
   value = p1 = Var_Subst(((void*)0), var, VAR_GLOBAL,
       VARF_WANTRES);
  } else if (expandVars) {
   char tmp[128];
   int len = snprintf(tmp, sizeof(tmp), "${%s}", var);

   if (len >= (int)sizeof(tmp))
    Fatal("%s: variable name too big: %s",
        progname, var);
   value = p1 = Var_Subst(((void*)0), tmp, VAR_GLOBAL,
       VARF_WANTRES);
  } else {
   value = Var_Value(var, VAR_GLOBAL, &p1);
  }
  printf("%s\n", value ? value : "");
  free(p1);
 }
}
