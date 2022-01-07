
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * code_file ;
 int fprintf (int *,char*,char const*) ;
 int fputs (char*,int *) ;
 int outline ;

__attribute__((used)) static void
output_externs(FILE * fp, const char *const section[])
{
    int i;
    const char *s;

    for (i = 0; (s = section[i]) != 0; ++i)
    {


 if (*s && (*s != '#'))
     fputs("extern\t", fp);
 if (fp == code_file)
     ++outline;
 fprintf(fp, "%s\n", s);
    }
}
