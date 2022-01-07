
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int * code_file ;
 int * defines_file ;
 int dflag ;
 int * externs_file ;
 int fprintf (int *,char*,...) ;
 int fputs (char*,int *) ;
 int getc (scalar_t__) ;
 scalar_t__ iflag ;
 scalar_t__ is_C_identifier (char*) ;
 scalar_t__ locations ;
 int ntokens ;
 int outline ;
 int output_ltype (int *) ;
 int putc (int,int *) ;
 int putc_code (int *,int) ;
 int rewind (scalar_t__) ;
 scalar_t__ rflag ;
 int sflag ;
 char** symbol_name ;
 char* symbol_prefix ;
 int* symbol_value ;
 scalar_t__ token_table ;
 scalar_t__ union_file ;
 scalar_t__ unionized ;

__attribute__((used)) static void
output_defines(FILE * fp)
{
    int c, i;
    char *s;

    for (i = 2; i < ntokens; ++i)
    {
 s = symbol_name[i];
 if (is_C_identifier(s) && (!sflag || *s != '"'))
 {
     fprintf(fp, "#define ");
     c = *s;
     if (c == '"')
     {
  while ((c = *++s) != '"')
  {
      putc(c, fp);
  }
     }
     else
     {
  do
  {
      putc(c, fp);
  }
  while ((c = *++s) != 0);
     }
     if (fp == code_file)
  ++outline;
     fprintf(fp, " %d\n", symbol_value[i]);
 }
    }

    if (fp == code_file)
 ++outline;
    if (fp != defines_file || iflag)
 fprintf(fp, "#define YYERRCODE %d\n", symbol_value[1]);

    if (token_table && rflag && fp != externs_file)
    {
 if (fp == code_file)
     ++outline;
 fputs("#undef yytname\n", fp);
 if (fp == code_file)
     ++outline;
 fputs("#define yytname yyname\n", fp);
    }

    if (fp == defines_file || (iflag && !dflag))
    {
 if (unionized)
 {
     if (union_file != 0)
     {
  rewind(union_file);
  while ((c = getc(union_file)) != EOF)
      putc_code(fp, c);
     }
     fprintf(fp, "extern YYSTYPE %slval;\n", symbol_prefix);
 }




    }
}
