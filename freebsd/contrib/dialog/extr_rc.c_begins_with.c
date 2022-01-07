
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dlg_strcmp (char const*,char*) ;
 int skip_keyword (char*,int) ;
 int skip_whitespace (char*,int) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int
begins_with(char *line, const char *keyword, char **params)
{
    int i = skip_whitespace(line, 0);
    int j = skip_keyword(line, i);

    if ((j - i) == (int) strlen(keyword)) {
 char save = line[j];
 line[j] = 0;
 if (!dlg_strcmp(keyword, line + i)) {
     *params = line + skip_whitespace(line, j + 1);
     return 1;
 }
 line[j] = save;
    }

    return 0;
}
