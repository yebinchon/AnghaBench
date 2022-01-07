
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*,char*) ;
 int * func_params ;
 int put_error () ;
 int stderr ;
 char* yytext ;

__attribute__((used)) static void
yaccError (const char *msg)
{
    func_params = ((void*)0);
    put_error();
    fprintf(stderr, "%s at token '%s'\n", msg, yytext);
}
