
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;
typedef int relax_substateT ;
typedef int offsetT ;


 int MAX_MEM_FOR_RS_ALIGN_CODE ;
 int _ (char*) ;
 int as_fatal (int ) ;
 char* frag_var (int ,int,int,int ,int *,int ,char*) ;
 int rs_align_code ;

void
arm_frag_align_code (int n, int max)
{
  char * p;



  if (max > MAX_MEM_FOR_RS_ALIGN_CODE)
    as_fatal (_("alignments greater than 32 bytes not supported in .text sections."));

  p = frag_var (rs_align_code,
  MAX_MEM_FOR_RS_ALIGN_CODE,
  1,
  (relax_substateT) max,
  (symbolS *) ((void*)0),
  (offsetT) n,
  (char *) ((void*)0));
  *p = 0;
}
