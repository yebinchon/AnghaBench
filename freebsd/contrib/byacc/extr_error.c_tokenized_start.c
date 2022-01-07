
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int done (int) ;
 int fprintf (int ,char*,char*,int,char*,char*) ;
 char* input_file_name ;
 int lineno ;
 char* myname ;
 int stderr ;

void
tokenized_start(char *s)
{
    fprintf(stderr,
     "%s: e - line %d of \"%s\", the start symbol %s cannot be declared to be a token\n", myname, lineno, input_file_name, s);

    done(1);
}
