
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*,int,char*) ;
 char* input_file_name ;
 int lineno ;
 char* myname ;
 int stderr ;

void
prec_redeclared(void)
{
    fprintf(stderr, "%s: w - line %d of  \"%s\", conflicting %%prec specifiers\n", myname, lineno, input_file_name);

}
