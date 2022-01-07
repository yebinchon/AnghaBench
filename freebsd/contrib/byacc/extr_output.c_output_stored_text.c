
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int getc (int *) ;
 int open_error (char*) ;
 int putc_code (int *,int) ;
 int rewind (int *) ;
 int * text_file ;
 int write_code_lineno (int *) ;

__attribute__((used)) static void
output_stored_text(FILE * fp)
{
    int c;
    FILE *in;

    rewind(text_file);
    if (text_file == ((void*)0))
 open_error("text_file");
    in = text_file;
    if ((c = getc(in)) == EOF)
 return;
    putc_code(fp, c);
    while ((c = getc(in)) != EOF)
    {
 putc_code(fp, c);
    }
    write_code_lineno(fp);
}
