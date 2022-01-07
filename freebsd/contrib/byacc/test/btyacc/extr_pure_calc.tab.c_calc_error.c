
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*) ;
 char* s ;
 int stderr ;

__attribute__((used)) static void
YYERROR_DECL()
{
    fprintf(stderr, "%s\n", s);
}
