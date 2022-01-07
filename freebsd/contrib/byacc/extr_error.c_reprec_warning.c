
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*,int,char*,char*) ;
 char* input_file_name ;
 int lineno ;
 char* myname ;
 int stderr ;

void
reprec_warning(char *s)
{
    fprintf(stderr,
     "%s: w - line %d of \"%s\", the precedence of %s has been redeclared\n", myname, lineno, input_file_name, s);

}
