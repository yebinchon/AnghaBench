
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int flags; int val; } ;
typedef TYPE_1__ Var ;
struct TYPE_12__ {char* name; int context; } ;
typedef int Hash_Entry ;
typedef TYPE_2__ GNode ;


 int Buf_AddByte (int *,char) ;
 int Buf_AddBytes (int *,int ,char const*) ;
 char* Buf_GetAll (int *,int *) ;
 scalar_t__ DEBUG (int ) ;
 int FIND_CMD ;
 int FIND_ENV ;
 int * Hash_CreateEntry (int *,char const*,int *) ;
 int Hash_SetValue (int *,TYPE_1__*) ;
 int VAR ;
 int VARF_WANTRES ;
 TYPE_2__* VAR_CMD ;
 int VAR_FROM_CMD ;
 int VAR_FROM_ENV ;
 TYPE_2__* VAR_GLOBAL ;
 TYPE_1__* VarFind (char const*,TYPE_2__*,int) ;
 int Var_Set (char const*,char const*,TYPE_2__*,int ) ;
 char* Var_Subst (int *,char const*,TYPE_2__*,int ) ;
 int debug_file ;
 int fprintf (int ,char*,char const*,char const*,...) ;
 int free (char*) ;
 int * strchr (char const*,char) ;
 int strlen (char const*) ;

void
Var_Append(const char *name, const char *val, GNode *ctxt)
{
    Var *v;
    Hash_Entry *h;
    char *expanded_name = ((void*)0);

    if (strchr(name, '$') != ((void*)0)) {
 expanded_name = Var_Subst(((void*)0), name, ctxt, VARF_WANTRES);
 if (expanded_name[0] == 0) {
     if (DEBUG(VAR)) {
  fprintf(debug_file, "Var_Append(\"%s\", \"%s\", ...) "
   "name expands to empty string - ignored\n",
   name, val);
     }
     free(expanded_name);
     return;
 }
 name = expanded_name;
    }

    v = VarFind(name, ctxt, (ctxt == VAR_GLOBAL) ? (FIND_CMD|FIND_ENV) : 0);

    if (v == ((void*)0)) {
 Var_Set(name, val, ctxt, 0);
    } else if (ctxt == VAR_CMD || !(v->flags & VAR_FROM_CMD)) {
 Buf_AddByte(&v->val, ' ');
 Buf_AddBytes(&v->val, strlen(val), val);

 if (DEBUG(VAR)) {
     fprintf(debug_file, "%s:%s = %s\n", ctxt->name, name,
     Buf_GetAll(&v->val, ((void*)0)));
 }

 if (v->flags & VAR_FROM_ENV) {






     v->flags &= ~VAR_FROM_ENV;
     h = Hash_CreateEntry(&ctxt->context, name, ((void*)0));
     Hash_SetValue(h, v);
 }
    }
    free(expanded_name);
}
