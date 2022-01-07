
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
syntax_error(int st_lineno, char *st_line, char *st_cptr)
{
    fprintf(stderr, "%s: e - line %d of \"%s\", syntax error\n",
     myname, st_lineno, input_file_name);
    print_pos(st_line, st_cptr);
    done(1);
}
