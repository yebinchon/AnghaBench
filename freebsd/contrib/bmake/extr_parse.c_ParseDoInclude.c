
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PARSE_FATAL ;
 int Parse_Error (int ,char*,...) ;
 int Parse_include_file (char*,int,int,int) ;
 int VARF_WANTRES ;
 int VAR_CMD ;
 char* Var_Subst (int *,char*,int ,int ) ;
 int free (char*) ;

__attribute__((used)) static void
ParseDoInclude(char *line)
{
    char endc;
    char *cp;
    int silent = (*line != 'i') ? 1 : 0;
    char *file = &line[7 + silent];


    while (*file == ' ' || *file == '\t')
 file++;

    if (*file != '"' && *file != '<') {
 Parse_Error(PARSE_FATAL,
     ".include filename must be delimited by '\"' or '<'");
 return;
    }






    if (*file == '<') {
 endc = '>';
    } else {
 endc = '"';
    }


    for (cp = ++file; *cp && *cp != endc; cp++)
 continue;

    if (*cp != endc) {
 Parse_Error(PARSE_FATAL,
       "Unclosed %cinclude filename. '%c' expected",
       '.', endc);
 return;
    }
    *cp = '\0';





    file = Var_Subst(((void*)0), file, VAR_CMD, VARF_WANTRES);

    Parse_include_file(file, endc == '>', (*line == 'd'), silent);
    free(file);
}
