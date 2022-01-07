
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int done (int) ;
 int fprintf (int ,char*,char*,int,char*,int) ;
 char* input_file_name ;
 int lineno ;
 char* myname ;
 int stderr ;

void
unknown_rhs(int i)
{
    fprintf(stderr, "%s: e - line %d of \"%s\", $%d is untyped\n",
     myname, lineno, input_file_name, i);
    done(1);
}
