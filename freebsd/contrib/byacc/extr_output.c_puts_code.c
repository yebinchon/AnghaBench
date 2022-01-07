
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fputs (char const*,int *) ;

__attribute__((used)) static void
puts_code(FILE * fp, const char *s)
{
    fputs(s, fp);
}
