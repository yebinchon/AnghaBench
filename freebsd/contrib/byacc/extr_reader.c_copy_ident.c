
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int* cptr ;
 int fprintf (int *,char*) ;
 int line ;
 int lineno ;
 int nextc () ;
 int outline ;
 int * output_file ;
 int putc (char,int *) ;
 int syntax_error (int ,int ,int*) ;
 int unexpected_EOF () ;

__attribute__((used)) static void
copy_ident(void)
{
    int c;
    FILE *f = output_file;

    c = nextc();
    if (c == EOF)
 unexpected_EOF();
    if (c != '"')
 syntax_error(lineno, line, cptr);
    ++outline;
    fprintf(f, "#ident \"");
    for (;;)
    {
 c = *++cptr;
 if (c == '\n')
 {
     fprintf(f, "\"\n");
     return;
 }
 putc(c, f);
 if (c == '"')
 {
     putc('\n', f);
     ++cptr;
     return;
 }
    }
}
