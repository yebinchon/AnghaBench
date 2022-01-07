
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,int) ;

__attribute__((used)) static void asm_emit_align(void *e, int a)
{
 FILE *f = e;

 fprintf(f, "\t.balign\t%d\n", a);
}
