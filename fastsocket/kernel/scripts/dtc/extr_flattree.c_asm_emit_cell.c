
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cell_t ;
typedef int FILE ;


 int fprintf (int *,char*,int) ;

__attribute__((used)) static void asm_emit_cell(void *e, cell_t val)
{
 FILE *f = e;

 fprintf(f, "\t.long\t0x%x\n", val);
}
