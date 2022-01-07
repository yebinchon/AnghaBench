
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* CONCAT1 (char*,int ) ;
 scalar_t__ CountLine (int *) ;
 int YYINT ;
 int fprintf (int *,char*,char*) ;
 int outline ;

__attribute__((used)) static void
output_YYINT_typedef(FILE * fp)
{

    if (CountLine(fp))
 ++outline;
    fprintf(fp, "typedef %s YYINT;\n", CONCAT1("", YYINT));
}
