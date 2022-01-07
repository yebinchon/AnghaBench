
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int done (int) ;
 int fprintf (int ,char*,char*,int,char*) ;
 char* input_file_name ;
 int line ;
 int lineno ;
 char* myname ;
 int print_pos (int ,char*) ;
 int stderr ;

void
illegal_character(char *c_cptr)
{
    fprintf(stderr, "%s: e - line %d of \"%s\", illegal character\n",
     myname, lineno, input_file_name);
    print_pos(line, c_cptr);
    done(1);
}
