
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,char const*,char const*) ;

__attribute__((used)) static void emit_label(FILE *f, const char *prefix, const char *label)
{
 fprintf(f, "\t.globl\t%s_%s\n", prefix, label);
 fprintf(f, "%s_%s:\n", prefix, label);
 fprintf(f, "_%s_%s:\n", prefix, label);
}
