
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GNode ;
typedef int Buffer ;
typedef int Boolean ;


 char const BRCLOSE ;
 char const BROPEN ;
 int Buf_AddByte (int *,char const) ;
 int Buf_AddBytes (int *,int,char const*) ;
 char* Buf_DestroyCompact (int *) ;
 int Buf_Init (int *,int ) ;
 void* FALSE ;
 int PARSE_FATAL ;
 char const PRCLOSE ;
 char const PROPEN ;
 int Parse_Error (int ,char*,int,char const*) ;
 void* TRUE ;
 int VARF_ASSIGN ;
 int VARF_UNDEFERR ;
 char* Var_Parse (char const*,int *,int,int*,void**) ;
 int free (void*) ;
 scalar_t__ oldVars ;
 scalar_t__ save_dollars ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;
 char* varNoError ;
 char* var_Error ;

char *
Var_Subst(const char *var, const char *str, GNode *ctxt, int flags)
{
    Buffer buf;
    char *val;
    int length;
    Boolean trailingBslash;
    void *freeIt = ((void*)0);
    static Boolean errorReported;



    Buf_Init(&buf, 0);
    errorReported = FALSE;
    trailingBslash = FALSE;

    while (*str) {
 if (*str == '\n' && trailingBslash)
     Buf_AddByte(&buf, ' ');
 if (var == ((void*)0) && (*str == '$') && (str[1] == '$')) {





     if (save_dollars && (flags & VARF_ASSIGN))
  Buf_AddByte(&buf, *str);
     str++;
     Buf_AddByte(&buf, *str);
     str++;
 } else if (*str != '$') {




     const char *cp;

     for (cp = str++; *str != '$' && *str != '\0'; str++)
  continue;
     Buf_AddBytes(&buf, str - cp, cp);
 } else {
     if (var != ((void*)0)) {
  int expand;
  for (;;) {
      if (str[1] == '\0') {

   Buf_AddByte(&buf, str[0]);
   str++;
   expand = FALSE;
      } else if (str[1] != PROPEN && str[1] != BROPEN) {
   if (str[1] != *var || strlen(var) > 1) {
       Buf_AddBytes(&buf, 2, str);
       str += 2;
       expand = FALSE;
   }
   else
       expand = TRUE;
   break;
      }
      else {
   const char *p;




   for (p = &str[2]; *p &&
        *p != ':' && *p != PRCLOSE && *p != BRCLOSE; p++)
       if (*p == '$')
    break;





   if (*p == '$') {
       Buf_AddBytes(&buf, p - str, str);
       str = p;
       continue;
   }

   if (strncmp(var, str + 2, p - str - 2) != 0 ||
       var[p - str - 2] != '\0') {




       for (;*p != '$' && *p != '\0'; p++)
    continue;
       Buf_AddBytes(&buf, p - str, str);
       str = p;
       expand = FALSE;
   }
   else
       expand = TRUE;
   break;
      }
  }
  if (!expand)
      continue;
     }

     val = Var_Parse(str, ctxt, flags, &length, &freeIt);







     if (val == var_Error || val == varNoError) {






  if (oldVars) {
      str += length;
  } else if ((flags & VARF_UNDEFERR) || val == var_Error) {





      if (!errorReported) {
   Parse_Error(PARSE_FATAL,
         "Undefined variable \"%.*s\"",length,str);
      }
      str += length;
      errorReported = TRUE;
  } else {
      Buf_AddByte(&buf, *str);
      str += 1;
  }
     } else {




  str += length;





  length = strlen(val);
  Buf_AddBytes(&buf, length, val);
  trailingBslash = length > 0 && val[length - 1] == '\\';
     }
     free(freeIt);
     freeIt = ((void*)0);
 }
    }

    return Buf_DestroyCompact(&buf);
}
