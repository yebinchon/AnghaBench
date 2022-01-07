
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int Boolean ;


 int VARF_WANTRES ;
 int VAR_CMD ;
 char* Var_Subst (int *,char*,int ,int ) ;
 int setenv (char*,char*,int) ;
 int strncpy (char*,char*,int) ;

void
Main_ExportMAKEFLAGS(Boolean first)
{
    static int once = 1;
    char tmp[64];
    char *s;

    if (once != first)
 return;
    once = 0;

    strncpy(tmp, "${.MAKEFLAGS} ${.MAKEOVERRIDES:O:u:@v@$v=${$v:Q}@}",
     sizeof(tmp));
    s = Var_Subst(((void*)0), tmp, VAR_CMD, VARF_WANTRES);
    if (s && *s) {



 setenv("MAKE", s, 1);

    }
}
