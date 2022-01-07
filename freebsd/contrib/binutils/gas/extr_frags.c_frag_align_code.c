
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;
typedef int relax_substateT ;
typedef int offsetT ;


 int MAX_MEM_FOR_RS_ALIGN_CODE ;
 char NOP_OPCODE ;
 char* frag_var (int ,int ,int,int ,int *,int ,char*) ;
 int rs_align_code ;

void
frag_align_code (int alignment, int max)
{
  char *p;

  p = frag_var (rs_align_code, MAX_MEM_FOR_RS_ALIGN_CODE, 1,
  (relax_substateT) max, (symbolS *) 0,
  (offsetT) alignment, (char *) 0);
  *p = NOP_OPCODE;
}
