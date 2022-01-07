
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int feof (int ) ;
 int stdin ;
 int yyparse (int*,int*) ;

int
main (void)
{
    int regs[26];
    int base = 10;

    while(!feof(stdin)) {
 yyparse(regs, &base);
    }
    return 0;
}
