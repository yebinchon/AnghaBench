
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_3__ {int flags; int val; } ;
typedef TYPE_1__ Var ;


 int BUFSIZ ;
 char* Buf_GetAll (int *,int *) ;
 int VARF_WANTRES ;
 int VAR_EXPORTED ;
 int VAR_EXPORT_LITERAL ;
 int VAR_EXPORT_PARENT ;
 int VAR_GLOBAL ;
 int VAR_IN_USE ;
 int VAR_REEXPORT ;
 TYPE_1__* VarFind (char const*,int ,int ) ;
 char* Var_Subst (int *,char*,int ,int ) ;
 int free (char*) ;
 int setenv (char const*,char*,int) ;
 int snprintf (char*,int,char*,char const*) ;
 scalar_t__ strchr (char*,char) ;

__attribute__((used)) static int
Var_Export1(const char *name, int flags)
{
    char tmp[BUFSIZ];
    Var *v;
    char *val = ((void*)0);
    int n;
    int parent = (flags & VAR_EXPORT_PARENT);

    if (*name == '.')
 return 0;
    if (!name[1]) {






 switch (name[0]) {
 case '@':
 case '%':
 case '*':
 case '!':
     return 0;
 }
    }
    v = VarFind(name, VAR_GLOBAL, 0);
    if (v == ((void*)0)) {
 return 0;
    }
    if (!parent &&
 (v->flags & (VAR_EXPORTED|VAR_REEXPORT)) == VAR_EXPORTED) {
 return 0;
    }
    val = Buf_GetAll(&v->val, ((void*)0));
    if ((flags & VAR_EXPORT_LITERAL) == 0 && strchr(val, '$')) {
 if (parent) {





     v->flags |= (VAR_EXPORTED|VAR_REEXPORT);
     return 1;
 }
 if (v->flags & VAR_IN_USE) {




     return 0;
 }
 n = snprintf(tmp, sizeof(tmp), "${%s}", name);
 if (n < (int)sizeof(tmp)) {
     val = Var_Subst(((void*)0), tmp, VAR_GLOBAL, VARF_WANTRES);
     setenv(name, val, 1);
     free(val);
 }
    } else {
 if (parent) {
     v->flags &= ~VAR_REEXPORT;
 }
 if (parent || !(v->flags & VAR_EXPORTED)) {
     setenv(name, val, 1);
 }
    }



    if (parent) {
 v->flags |= VAR_EXPORTED;
    }
    return 1;
}
