
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; } ;
typedef TYPE_1__ Path ;
typedef int * LstNode ;
typedef int Lst ;


 int Lst_Close (int ) ;
 scalar_t__ Lst_Datum (int *) ;
 int * Lst_Next (int ) ;
 scalar_t__ Lst_Open (int ) ;
 int STR_ADDSPACE ;
 scalar_t__ SUCCESS ;
 char* bmake_strdup (char*) ;
 int free (char*) ;
 char* str_concat (char const*,char*,int ) ;

char *
Dir_MakeFlags(const char *flag, Lst path)
{
    char *str;
    char *s1, *s2;
    LstNode ln;
    Path *p;

    str = bmake_strdup("");

    if (Lst_Open(path) == SUCCESS) {
 while ((ln = Lst_Next(path)) != ((void*)0)) {
     p = (Path *)Lst_Datum(ln);
     s2 = str_concat(flag, p->name, 0);
     str = str_concat(s1 = str, s2, STR_ADDSPACE);
     free(s1);
     free(s2);
 }
 Lst_Close(path);
    }

    return (str);
}
