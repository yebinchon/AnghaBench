
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int done (int) ;
 int fprintf (int ,char*,char*,int,char*) ;
 char* input_file_name ;
 char* myname ;
 int print_pos (char*,char*) ;
 int stderr ;

void
illegal_tag(int t_lineno, char *t_line, char *t_cptr)
{
    fprintf(stderr, "%s: e - line %d of \"%s\", illegal tag\n",
     myname, t_lineno, input_file_name);
    print_pos(t_line, t_cptr);
    done(1);
}
