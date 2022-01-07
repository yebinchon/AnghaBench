
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ainfo {int a_lineno; int a_cptr; int a_line; } ;


 int done (int) ;
 int fprintf (int ,char*,char*,int,char*) ;
 char* input_file_name ;
 char* myname ;
 int print_pos (int ,int ) ;
 int stderr ;

void
unterminated_union(const struct ainfo *a)
{
    fprintf(stderr, "%s: e - line %d of \"%s\", unterminated %%union declaration\n", myname, a->a_lineno, input_file_name);

    print_pos(a->a_line, a->a_cptr);
    done(1);
}
