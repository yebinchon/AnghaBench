
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,...) ;

__attribute__((used)) static void asm_emit_beginnode(void *e, const char *label)
{
 FILE *f = e;

 if (label) {
  fprintf(f, "\t.globl\t%s\n", label);
  fprintf(f, "%s:\n", label);
 }
 fprintf(f, "\t.long\tFDT_BEGIN_NODE\n");
}
