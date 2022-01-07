
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Buffer ;


 int Buf_AddByte (int *,char) ;
 int Buf_AddBytes (int *,int ,char*) ;
 int Buf_Destroy (int *,int ) ;
 char* Buf_GetAll (int *,int*) ;
 int Buf_Init (int *,int) ;
 int FALSE ;
 int PARSE_WARNING ;
 int Parse_Error (int ,char*,char const*) ;
 int VARF_UNDEFERR ;
 int VARF_WANTRES ;
 int VAR_CMD ;
 char* Var_Parse (char*,int ,int,int*,void**) ;
 int free (void*) ;
 int strlen (char*) ;

__attribute__((used)) static int
CondGetArg(char **linePtr, char **argPtr, const char *func)
{
    char *cp;
    int argLen;
    Buffer buf;
    int paren_depth;
    char ch;

    cp = *linePtr;
    if (func != ((void*)0))

 cp++;

    if (*cp == '\0') {






 *argPtr = ((void*)0);
 return (0);
    }

    while (*cp == ' ' || *cp == '\t') {
 cp++;
    }





    Buf_Init(&buf, 16);

    paren_depth = 0;
    for (;;) {
 ch = *cp;
 if (ch == 0 || ch == ' ' || ch == '\t')
     break;
 if ((ch == '&' || ch == '|') && paren_depth == 0)
     break;
 if (*cp == '$') {






     char *cp2;
     int len;
     void *freeIt;

     cp2 = Var_Parse(cp, VAR_CMD, VARF_UNDEFERR|VARF_WANTRES,
       &len, &freeIt);
     Buf_AddBytes(&buf, strlen(cp2), cp2);
     free(freeIt);
     cp += len;
     continue;
 }
 if (ch == '(')
     paren_depth++;
 else
     if (ch == ')' && --paren_depth < 0)
  break;
 Buf_AddByte(&buf, *cp);
 cp++;
    }

    *argPtr = Buf_GetAll(&buf, &argLen);
    Buf_Destroy(&buf, FALSE);

    while (*cp == ' ' || *cp == '\t') {
 cp++;
    }

    if (func != ((void*)0) && *cp++ != ')') {
 Parse_Error(PARSE_WARNING, "Missing closing parenthesis for %s()",
       func);
 return (0);
    }

    *linePtr = cp;
    return (argLen);
}
