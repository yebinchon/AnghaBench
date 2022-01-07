
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Boolean ;


 int FALSE ;
 int PARSE_FATAL ;
 int PARSE_INFO ;
 int PARSE_WARNING ;
 int Parse_Error (int,char*,char*) ;
 int TRUE ;
 int VARF_WANTRES ;
 int VAR_CMD ;
 char* Var_Subst (int *,char*,int ,int ) ;
 int exit (int) ;
 int free (char*) ;
 scalar_t__ isalpha (unsigned char) ;
 scalar_t__ isspace (unsigned char) ;

__attribute__((used)) static Boolean
ParseMessage(char *line)
{
    int mtype;

    switch(*line) {
    case 'i':
 mtype = PARSE_INFO;
 break;
    case 'w':
 mtype = PARSE_WARNING;
 break;
    case 'e':
 mtype = PARSE_FATAL;
 break;
    default:
 Parse_Error(PARSE_WARNING, "invalid syntax: \".%s\"", line);
 return FALSE;
    }

    while (isalpha((unsigned char)*line))
 line++;
    if (!isspace((unsigned char)*line))
 return FALSE;
    while (isspace((unsigned char)*line))
 line++;

    line = Var_Subst(((void*)0), line, VAR_CMD, VARF_WANTRES);
    Parse_Error(mtype, "%s", line);
    free(line);

    if (mtype == PARSE_FATAL) {

 exit(1);
    }
    return TRUE;
}
