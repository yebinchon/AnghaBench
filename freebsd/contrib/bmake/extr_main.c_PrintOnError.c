
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_7__ {int type; int commands; int name; } ;
typedef TYPE_1__ GNode ;


 int Compat_Make (TYPE_1__*,TYPE_1__*) ;
 int Lst_ForEach (int ,int ,TYPE_1__*) ;
 int OP_SPECIAL ;
 int TARG_NOCREATE ;
 TYPE_1__* Targ_FindNode (char*,int ) ;
 int VARF_WANTRES ;
 int VAR_GLOBAL ;
 int Var_Delete (char*,int ) ;
 int Var_Set (char*,int ,int ,int ) ;
 char* Var_Subst (int *,char*,int ,int ) ;
 int addErrorCMD ;
 char* curdir ;
 int fflush (int ) ;
 int free (char*) ;
 int printf (char*,char const*,...) ;
 char* progname ;
 int stdout ;
 int strncpy (char*,char*,int) ;

void
PrintOnError(GNode *gn, const char *s)
{
    static GNode *en = ((void*)0);
    char tmp[64];
    char *cp;

    if (s)
 printf("%s", s);

    printf("\n%s: stopped in %s\n", progname, curdir);

    if (en)
 return;
    if (gn) {



 Var_Set(".ERROR_TARGET", gn->name, VAR_GLOBAL, 0);
 Var_Delete(".ERROR_CMD", VAR_GLOBAL);
 Lst_ForEach(gn->commands, addErrorCMD, gn);
    }
    strncpy(tmp, "${MAKE_PRINT_VAR_ON_ERROR:@v@$v='${$v}'\n@}",
     sizeof(tmp) - 1);
    cp = Var_Subst(((void*)0), tmp, VAR_GLOBAL, VARF_WANTRES);
    if (cp) {
 if (*cp)
     printf("%s", cp);
 free(cp);
    }
    fflush(stdout);




    en = Targ_FindNode(".ERROR", TARG_NOCREATE);
    if (en) {
 en->type |= OP_SPECIAL;
 Compat_Make(en, en);
    }
}
