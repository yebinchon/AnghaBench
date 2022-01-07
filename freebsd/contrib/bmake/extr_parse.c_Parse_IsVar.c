
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Boolean ;


 scalar_t__ FALSE ;
 scalar_t__ ISEQOPERATOR (char) ;
 scalar_t__ TRUE ;
 scalar_t__ strncmp (char*,char*,int) ;

Boolean
Parse_IsVar(char *line)
{
    Boolean wasSpace = FALSE;
    char ch;
    int level = 0;






    for (;(*line == ' ') || (*line == '\t'); line++)
 continue;


    while ((ch = *line++) != 0) {
 if (ch == '(' || ch == '{') {
     level++;
     continue;
 }
 if (ch == ')' || ch == '}') {
     level--;
     continue;
 }
 if (level != 0)
     continue;
 while (ch == ' ' || ch == '\t') {
     ch = *line++;
     wasSpace = TRUE;
 }






 if (ch == '=')
     return TRUE;
 if (*line == '=' && (((ch) == '+') || ((ch) == ':') || ((ch) == '?') || ((ch) == '!')))
     return TRUE;
 if (wasSpace)
     return FALSE;
    }

    return FALSE;
}
