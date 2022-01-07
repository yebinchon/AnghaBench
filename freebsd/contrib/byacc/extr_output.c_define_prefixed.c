
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int CountLine (int *) ;
 int fprintf (int *,char*,...) ;
 int outline ;
 char* symbol_prefix ;

__attribute__((used)) static void
define_prefixed(FILE * fp, const char *name)
{
    int bump_line = CountLine(fp);
    if (bump_line)
 ++outline;
    fprintf(fp, "\n");

    if (bump_line)
 ++outline;
    fprintf(fp, "#ifndef %s\n", name);

    if (bump_line)
 ++outline;
    fprintf(fp, "#define %-10s %s%s\n", name, symbol_prefix, name + 2);

    if (bump_line)
 ++outline;
    fprintf(fp, "#endif /* %s */\n", name);
}
