
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PARSE_LINE ;


 int LINE_EMPTY ;
 int LINE_EQUALS ;
 int LINE_ERROR ;
 int UCH (char) ;
 scalar_t__ isblank (int ) ;
 int skip_whitespace (char*,int) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static PARSE_LINE
parse_line(char *line, char **var, char **value)
{
    int i = 0;


    i = skip_whitespace(line, i);

    if (line[i] == '\0')
 return LINE_EMPTY;
    else if (line[i] == '#')
 return LINE_EMPTY;
    else if (line[i] == '=')
 return LINE_ERROR;


    *var = line + i++;


    while (!isblank(UCH(line[i])) && line[i] != '=' && line[i] != '\0')
 i++;

    if (line[i] == '\0')
 return LINE_ERROR;
    else if (line[i] == '=')
 line[i++] = '\0';
    else {
 line[i++] = '\0';


 i = skip_whitespace(line, i);

 if (line[i] != '=')
     return LINE_ERROR;
 else
     i++;
    }


    i = skip_whitespace(line, i);

    if (line[i] == '\0')
 return LINE_ERROR;
    else
 *value = line + i;


    i = (int) strlen(*value) - 1;
    while (isblank(UCH((*value)[i])) && i > 0)
 i--;
    (*value)[i + 1] = '\0';

    return LINE_EQUALS;
}
