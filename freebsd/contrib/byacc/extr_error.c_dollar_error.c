
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
dollar_error(int a_lineno, char *a_line, char *a_cptr)
{
    fprintf(stderr, "%s: e - line %d of \"%s\", illegal $-name\n",
     myname, a_lineno, input_file_name);
    print_pos(a_line, a_cptr);
    done(1);
}
