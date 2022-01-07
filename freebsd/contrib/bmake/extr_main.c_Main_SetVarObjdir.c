
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Boolean ;


 int FALSE ;
 int Main_SetObjdir (char*,char*,char const*) ;
 int TRUE ;
 int VARF_WANTRES ;
 int VAR_CMD ;
 int VAR_GLOBAL ;
 char* Var_Subst (int *,char*,int ,int ) ;
 char* Var_Value (char const*,int ,char**) ;
 int free (char*) ;
 scalar_t__ strchr (char*,char) ;

__attribute__((used)) static Boolean
Main_SetVarObjdir(const char *var, const char *suffix)
{
 char *p, *path, *xpath;

 if ((path = Var_Value(var, VAR_CMD, &p)) == ((void*)0) ||
     *path == '\0')
  return FALSE;


 if (strchr(path, '$') != 0)
  xpath = Var_Subst(((void*)0), path, VAR_GLOBAL, VARF_WANTRES);
 else
  xpath = path;

 (void)Main_SetObjdir("%s%s", xpath, suffix);

 if (xpath != path)
  free(xpath);
 free(p);
 return TRUE;
}
