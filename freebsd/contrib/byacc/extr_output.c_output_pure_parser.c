
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * code_file ;
 int fprintf (int *,char*,int) ;
 int outline ;
 int pure_parser ;
 int putc_code (int *,char) ;

__attribute__((used)) static void
output_pure_parser(FILE * fp)
{
    putc_code(fp, '\n');

    if (fp == code_file)
 ++outline;
    fprintf(fp, "#define YYPURE %d\n", pure_parser);
    putc_code(fp, '\n');
}
