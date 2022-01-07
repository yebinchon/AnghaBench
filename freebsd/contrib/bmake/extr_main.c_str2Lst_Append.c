
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Lst ;


 int Lst_AtEnd (int ,char*) ;
 char* strtok (char*,char const*) ;

int
str2Lst_Append(Lst lp, char *str, const char *sep)
{
    char *cp;
    int n;

    if (!sep)
 sep = " \t";

    for (n = 0, cp = strtok(str, sep); cp; cp = strtok(((void*)0), sep)) {
 (void)Lst_AtEnd(lp, cp);
 n++;
    }
    return (n);
}
