
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int) ;
 int yyparse () ;

int
main(void)
{
    printf("yyparse() = %d\n", yyparse());
    return 0;
}
