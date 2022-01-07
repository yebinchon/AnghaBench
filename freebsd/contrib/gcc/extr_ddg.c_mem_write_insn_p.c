
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int PATTERN (int ) ;
 int mark_mem_store ;
 int mem_ref_p ;
 int note_stores (int ,int ,int *) ;

__attribute__((used)) static bool
mem_write_insn_p (rtx insn)
{
  mem_ref_p = 0;
  note_stores (PATTERN (insn), mark_mem_store, ((void*)0));
  return mem_ref_p;
}
