
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code_file ;
 int fprintf (int ,char*,int ,int ) ;
 int input_file_name ;
 int lflag ;
 char* line_format ;
 int lineno ;
 int outline ;

__attribute__((used)) static void
write_input_lineno(void)
{
    if (!lflag)
    {
 ++outline;
 fprintf(code_file, line_format, lineno, input_file_name);
    }
}
