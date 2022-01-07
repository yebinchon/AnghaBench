
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GNode ;
typedef void* Boolean ;


 char* Cmd_Exec (char*,char const**) ;
 int Dir_InitCur (char*) ;
 int Dir_SetPATH () ;
 void* FALSE ;
 int Job_SetPrefix () ;
 char* MAKEOVERRIDES ;
 char* MAKE_EXPORTED ;
 char* MAKE_JOB_PREFIX ;
 int Main_ExportMAKEFLAGS (void*) ;
 int PARSE_WARNING ;
 int Parse_Error (int ,char const*,char*) ;
 void* TRUE ;
 int VARF_ASSIGN ;
 int VARF_UNDEFERR ;
 int VARF_WANTRES ;
 int * VAR_CMD ;
 int Var_Append (char*,char*,int *) ;
 scalar_t__ Var_Exists (char*,int *) ;
 int Var_Export (char*,int ) ;
 int Var_Set (char*,char*,int *,int ) ;
 char* Var_Subst (int *,char*,int *,int) ;
 int free (char*) ;
 scalar_t__ isspace (unsigned char) ;
 void* oldVars ;
 int * strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strncmp (char*,char*,int) ;

void
Parse_DoVar(char *line, GNode *ctxt)
{
    char *cp;
    enum {
 VAR_SUBST, VAR_APPEND, VAR_SHELL, VAR_NORMAL
    } type;
    char *opc;

    Boolean freeCp = FALSE;


    int depth;




    while ((*line == ' ') || (*line == '\t')) {
 line++;
    }






    for (depth = 0, cp = line + 1; depth > 0 || *cp != '='; cp++) {
 if (*cp == '(' || *cp == '{') {
     depth++;
     continue;
 }
 if (*cp == ')' || *cp == '}') {
     depth--;
     continue;
 }
 if (depth == 0 && isspace ((unsigned char)*cp)) {
     *cp = '\0';
 }
    }
    opc = cp-1;
    *cp++ = '\0';




    switch (*opc) {
 case '+':
     type = VAR_APPEND;
     *opc = '\0';
     break;

 case '?':



     *opc = '\0';
     if (Var_Exists(line, ctxt)) {
  return;
     } else {
  type = VAR_NORMAL;
     }
     break;

 case ':':
     type = VAR_SUBST;
     *opc = '\0';
     break;

 case '!':
     type = VAR_SHELL;
     *opc = '\0';
     break;

 default:
     type = VAR_NORMAL;
     break;
    }

    while (isspace ((unsigned char)*cp)) {
 cp++;
    }

    if (type == VAR_APPEND) {
 Var_Append(line, cp, ctxt);
    } else if (type == VAR_SUBST) {
 Boolean oldOldVars = oldVars;

 oldVars = FALSE;





 if (!Var_Exists(line, ctxt))
     Var_Set(line, "", ctxt, 0);

 cp = Var_Subst(((void*)0), cp, ctxt, VARF_WANTRES|VARF_ASSIGN);
 oldVars = oldOldVars;
 freeCp = TRUE;

 Var_Set(line, cp, ctxt, 0);
    } else if (type == VAR_SHELL) {
 char *res;
 const char *error;

 if (strchr(cp, '$') != ((void*)0)) {





     cp = Var_Subst(((void*)0), cp, VAR_CMD, VARF_UNDEFERR|VARF_WANTRES);
     freeCp = TRUE;
 }

 res = Cmd_Exec(cp, &error);
 Var_Set(line, res, ctxt, 0);
 free(res);

 if (error)
     Parse_Error(PARSE_WARNING, error, cp);
    } else {



 Var_Set(line, cp, ctxt, 0);
    }
    if (strcmp(line, MAKEOVERRIDES) == 0)
 Main_ExportMAKEFLAGS(FALSE);
    else if (strcmp(line, ".CURDIR") == 0) {





 Dir_InitCur(cp);
 Dir_SetPATH();
    } else if (strcmp(line, MAKE_JOB_PREFIX) == 0) {
 Job_SetPrefix();
    } else if (strcmp(line, MAKE_EXPORTED) == 0) {
 Var_Export(cp, 0);
    }
    if (freeCp)
 free(cp);
}
