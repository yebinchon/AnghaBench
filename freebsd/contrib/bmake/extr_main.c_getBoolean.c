
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int Boolean ;


 int VARF_WANTRES ;
 int VAR_GLOBAL ;
 char* Var_Subst (int *,char*,int ,int ) ;
 int free (char*) ;
 int s2Boolean (char*,int ) ;
 int snprintf (char*,int,char*,char const*) ;

Boolean
getBoolean(const char *name, Boolean bf)
{
    char tmp[64];
    char *cp;

    if (snprintf(tmp, sizeof(tmp), "${%s:U:tl}", name) < (int)(sizeof(tmp))) {
 cp = Var_Subst(((void*)0), tmp, VAR_GLOBAL, VARF_WANTRES);

 if (cp) {
     bf = s2Boolean(cp, bf);
     free(cp);
 }
    }
    return (bf);
}
