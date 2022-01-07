
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * code_file ;
 int fputs (char const*,int *) ;
 int outline ;

__attribute__((used)) static void
putl_code(FILE * fp, const char *s)
{
    if (fp == code_file)
 ++outline;
    fputs(s, fp);
}
