
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int code_file ;
 int* cptr ;
 int getc (int *) ;
 int * input_file ;
 scalar_t__ line ;
 int lineno ;
 int putc_code (int ,char) ;
 int write_code_lineno (int ) ;
 int write_input_lineno () ;

__attribute__((used)) static void
output_trailing_text(void)
{
    int c, last;
    FILE *in;

    if (line == 0)
 return;

    in = input_file;
    c = *cptr;
    if (c == '\n')
    {
 ++lineno;
 if ((c = getc(in)) == EOF)
     return;
 write_input_lineno();
 putc_code(code_file, c);
 last = c;
    }
    else
    {
 write_input_lineno();
 do
 {
     putc_code(code_file, c);
 }
 while ((c = *++cptr) != '\n');
 putc_code(code_file, c);
 last = '\n';
    }

    while ((c = getc(in)) != EOF)
    {
 putc_code(code_file, c);
 last = c;
    }

    if (last != '\n')
    {
 putc_code(code_file, '\n');
    }
    write_code_lineno(code_file);
}
