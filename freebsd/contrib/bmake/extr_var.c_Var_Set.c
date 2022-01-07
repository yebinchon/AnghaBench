
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int flags; int val; } ;
typedef TYPE_1__ Var ;
struct TYPE_14__ {char* name; } ;
typedef TYPE_2__ GNode ;


 int Buf_AddBytes (int *,int ,char const*) ;
 int Buf_Empty (int *) ;
 scalar_t__ DEBUG (int ) ;
 int MAKEOVERRIDES ;
 int SAVE_DOLLARS ;
 scalar_t__ TRUE ;
 int VAR ;
 int VARF_WANTRES ;
 TYPE_2__* VAR_CMD ;
 int VAR_EXPORTED ;
 int VAR_EXPORT_PARENT ;
 int VAR_FROM_CMD ;
 TYPE_2__* VAR_GLOBAL ;
 int VAR_NO_EXPORT ;
 int VarAdd (char const*,char const*,TYPE_2__*) ;
 TYPE_1__* VarFind (char const*,TYPE_2__*,int ) ;
 int VarFreeEnv (TYPE_1__*,scalar_t__) ;
 int Var_Append (int ,char const*,TYPE_2__*) ;
 int Var_Delete (char const*,TYPE_2__*) ;
 int Var_Export1 (char const*,int ) ;
 char* Var_Subst (int *,char const*,TYPE_2__*,int ) ;
 int debug_file ;
 int fprintf (int ,char*,char const*,char const*,...) ;
 int free (char*) ;
 int s2Boolean (char const*,int ) ;
 int save_dollars ;
 int setenv (char const*,char const*,int) ;
 int * strchr (char const*,char) ;
 scalar_t__ strcmp (char const*,int ) ;
 int strlen (char const*) ;
 scalar_t__ varNoExportEnv ;

void
Var_Set(const char *name, const char *val, GNode *ctxt, int flags)
{
    Var *v;
    char *expanded_name = ((void*)0);






    if (strchr(name, '$') != ((void*)0)) {
 expanded_name = Var_Subst(((void*)0), name, ctxt, VARF_WANTRES);
 if (expanded_name[0] == 0) {
     if (DEBUG(VAR)) {
  fprintf(debug_file, "Var_Set(\"%s\", \"%s\", ...) "
   "name expands to empty string - ignored\n",
   name, val);
     }
     free(expanded_name);
     return;
 }
 name = expanded_name;
    }
    if (ctxt == VAR_GLOBAL) {
 v = VarFind(name, VAR_CMD, 0);
 if (v != ((void*)0)) {
     if ((v->flags & VAR_FROM_CMD)) {
  if (DEBUG(VAR)) {
      fprintf(debug_file, "%s:%s = %s ignored!\n", ctxt->name, name, val);
  }
  goto out;
     }
     VarFreeEnv(v, TRUE);
 }
    }
    v = VarFind(name, ctxt, 0);
    if (v == ((void*)0)) {
 if (ctxt == VAR_CMD && (flags & VAR_NO_EXPORT) == 0) {





     Var_Delete(name, VAR_GLOBAL);
 }
 VarAdd(name, val, ctxt);
    } else {
 Buf_Empty(&v->val);
 if (val)
     Buf_AddBytes(&v->val, strlen(val), val);

 if (DEBUG(VAR)) {
     fprintf(debug_file, "%s:%s = %s\n", ctxt->name, name, val);
 }
 if ((v->flags & VAR_EXPORTED)) {
     Var_Export1(name, VAR_EXPORT_PARENT);
 }
    }




    if (ctxt == VAR_CMD && (flags & VAR_NO_EXPORT) == 0) {
 if (v == ((void*)0)) {

     v = VarFind(name, ctxt, 0);
 }
 if (v != ((void*)0))
     v->flags |= VAR_FROM_CMD;






 if (varNoExportEnv != TRUE)
     setenv(name, val ? val : "", 1);

 Var_Append(MAKEOVERRIDES, name, VAR_GLOBAL);
    }
    if (*name == '.') {
 if (strcmp(name, SAVE_DOLLARS) == 0)
     save_dollars = s2Boolean(val, save_dollars);
    }

 out:
    free(expanded_name);
    if (v != ((void*)0))
 VarFreeEnv(v, TRUE);
}
