
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ varSpace; } ;
typedef TYPE_1__ Var_Parse_State ;
struct TYPE_5__ {int rhs; int lhs; } ;
typedef TYPE_2__ VarPattern ;
typedef int GNode ;
typedef int Buffer ;
typedef scalar_t__ Boolean ;


 int Buf_AddByte (int *,scalar_t__) ;
 int Buf_AddBytes (int *,int ,char*) ;
 char* Str_SYSVMatch (char*,int ,int*) ;
 int Str_SYSVSubst (int *,char*,char*,int) ;
 scalar_t__ TRUE ;
 int VARF_WANTRES ;
 char* Var_Subst (int *,int ,int *,int ) ;
 int free (char*) ;
 int strlen (char*) ;

__attribute__((used)) static Boolean
VarSYSVMatch(GNode *ctx, Var_Parse_State *vpstate,
      char *word, Boolean addSpace, Buffer *buf,
      void *patp)
{
    int len;
    char *ptr;
    VarPattern *pat = (VarPattern *)patp;
    char *varexp;

    if (addSpace && vpstate->varSpace)
 Buf_AddByte(buf, vpstate->varSpace);

    addSpace = TRUE;

    if ((ptr = Str_SYSVMatch(word, pat->lhs, &len)) != ((void*)0)) {
        varexp = Var_Subst(((void*)0), pat->rhs, ctx, VARF_WANTRES);
 Str_SYSVSubst(buf, varexp, ptr, len);
 free(varexp);
    } else {
 Buf_AddBytes(buf, strlen(word), word);
    }

    return(addSpace);
}
