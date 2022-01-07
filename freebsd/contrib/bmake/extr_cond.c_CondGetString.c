
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Buffer ;
typedef int Boolean ;


 int Buf_AddByte (int *,char) ;
 int Buf_Destroy (int *,int ) ;
 char* Buf_GetAll (int *,int *) ;
 int Buf_Init (int *,int ) ;
 int FALSE ;
 int VARF_UNDEFERR ;
 int VARF_WANTRES ;
 int VAR_CMD ;
 char* Var_Parse (char*,int ,int,int*,void**) ;
 char* condExpr ;
 int free (void*) ;
 int isdigit (unsigned char) ;
 int isspace (unsigned char) ;
 int strchr (char*,char) ;
 char* var_Error ;

__attribute__((used)) static char *
CondGetString(Boolean doEval, Boolean *quoted, void **freeIt, Boolean strictLHS)
{
    Buffer buf;
    char *cp;
    char *str;
    int len;
    int qt;
    char *start;

    Buf_Init(&buf, 0);
    str = ((void*)0);
    *freeIt = ((void*)0);
    *quoted = qt = *condExpr == '"' ? 1 : 0;
    if (qt)
 condExpr++;
    for (start = condExpr; *condExpr && str == ((void*)0); condExpr++) {
 switch (*condExpr) {
 case '\\':
     if (condExpr[1] != '\0') {
  condExpr++;
  Buf_AddByte(&buf, *condExpr);
     }
     break;
 case '"':
     if (qt) {
  condExpr++;
  goto got_str;
     } else
  Buf_AddByte(&buf, *condExpr);
     break;
 case ')':
 case '!':
 case '=':
 case '>':
 case '<':
 case ' ':
 case '\t':
     if (!qt)
  goto got_str;
     else
  Buf_AddByte(&buf, *condExpr);
     break;
 case '$':

     str = Var_Parse(condExpr, VAR_CMD,
       ((!qt && doEval) ? VARF_UNDEFERR : 0) |
       VARF_WANTRES, &len, freeIt);
     if (str == var_Error) {
  if (*freeIt) {
      free(*freeIt);
      *freeIt = ((void*)0);
  }




  str = ((void*)0);
  goto cleanup;
     }
     condExpr += len;





     if ((condExpr == start + len) &&
  (*condExpr == '\0' ||
   isspace((unsigned char) *condExpr) ||
   strchr("!=><)", *condExpr))) {
  goto cleanup;
     }



     for (cp = str; *cp; cp++) {
  Buf_AddByte(&buf, *cp);
     }
     if (*freeIt) {
  free(*freeIt);
  *freeIt = ((void*)0);
     }
     str = ((void*)0);
     condExpr--;
     break;
 default:
     if (strictLHS && !qt && *start != '$' &&
  !isdigit((unsigned char) *start)) {

  if (*freeIt) {
      free(*freeIt);
      *freeIt = ((void*)0);
  }
  str = ((void*)0);
  goto cleanup;
     }
     Buf_AddByte(&buf, *condExpr);
     break;
 }
    }
 got_str:
    str = Buf_GetAll(&buf, ((void*)0));
    *freeIt = str;
 cleanup:
    Buf_Destroy(&buf, FALSE);
    return str;
}
