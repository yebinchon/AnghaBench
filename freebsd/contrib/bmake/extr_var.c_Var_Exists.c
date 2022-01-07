
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Var ;
typedef int GNode ;
typedef int Boolean ;


 int FALSE ;
 int FIND_CMD ;
 int FIND_ENV ;
 int FIND_GLOBAL ;
 int TRUE ;
 int VARF_WANTRES ;
 int * VarFind (char*,int *,int) ;
 int VarFreeEnv (int *,int ) ;
 char* Var_Subst (int *,char const*,int *,int ) ;
 int free (char*) ;
 char* strchr (char const*,char) ;

Boolean
Var_Exists(const char *name, GNode *ctxt)
{
    Var *v;
    char *cp;

    if ((cp = strchr(name, '$')) != ((void*)0)) {
 cp = Var_Subst(((void*)0), name, ctxt, VARF_WANTRES);
    }
    v = VarFind(cp ? cp : name, ctxt, FIND_CMD|FIND_GLOBAL|FIND_ENV);
    free(cp);
    if (v == ((void*)0)) {
 return(FALSE);
    } else {
 (void)VarFreeEnv(v, TRUE);
    }
    return(TRUE);
}
