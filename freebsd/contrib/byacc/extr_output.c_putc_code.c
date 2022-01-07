
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * code_file ;
 int outline ;
 int putc (int,int *) ;

__attribute__((used)) static void
putc_code(FILE * fp, int c)
{
    if ((c == '\n') && (fp == code_file))
 ++outline;
    putc(c, fp);
}
