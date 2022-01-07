
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNUSED (int ) ;
 int base ;
 int fprintf (int ,char*,char*) ;
 int regs ;
 char* s ;
 int stderr ;

__attribute__((used)) static void
YYERROR_DECL()
{
    UNUSED(regs);
    UNUSED(base);
    fprintf(stderr, "%s\n", s);
}
