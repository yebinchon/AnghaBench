
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* column_separator () ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static char *
next_col(char *source, unsigned offset)
{
    char *mark = column_separator();
    char *result = source + offset;
    if (offset)
 result += strlen(mark);
    return strstr(result, mark);
}
