
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int feof (int ) ;
 int stdin ;
 int yyparse () ;

int
main (void)
{
    while(!feof(stdin)) {
 yyparse();
    }
    return 0;
}
