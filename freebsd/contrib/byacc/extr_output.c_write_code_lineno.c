
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * code_file ;
 int code_file_name ;
 int fprintf (int *,char*,scalar_t__,int ) ;
 int lflag ;
 char* line_format ;
 scalar_t__ outline ;

__attribute__((used)) static void
write_code_lineno(FILE * fp)
{
    if (!lflag && (fp == code_file))
    {
 ++outline;
 fprintf(fp, line_format, outline + 1, code_file_name);
    }
}
