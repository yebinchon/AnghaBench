
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int action_file ;
 int code_file ;
 int getc (int ) ;
 int putc_code (int ,char) ;
 int rewind (int ) ;
 int write_code_lineno (int ) ;

__attribute__((used)) static void
output_semantic_actions(void)
{
    int c, last;

    rewind(action_file);
    if ((c = getc(action_file)) == EOF)
 return;

    last = c;
    putc_code(code_file, c);
    while ((c = getc(action_file)) != EOF)
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
