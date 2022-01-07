
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int BLOCK_NUM (scalar_t__) ;
 scalar_t__ CALL_P (scalar_t__) ;
 int PATTERN (scalar_t__) ;
 int alloc_INSN_LIST (scalar_t__,int ) ;
 int bitmap_set_bit (int ,int) ;
 int blocks_with_calls ;
 int canon_list_insert ;
 int * canon_modify_mem_list ;
 int * modify_mem_list ;
 int modify_mem_list_set ;
 int note_stores (int ,int ,void*) ;

__attribute__((used)) static void
record_last_mem_set_info (rtx insn)
{
  int bb = BLOCK_NUM (insn);



  modify_mem_list[bb] = alloc_INSN_LIST (insn, modify_mem_list[bb]);
  bitmap_set_bit (modify_mem_list_set, bb);

  if (CALL_P (insn))
    {



      canon_modify_mem_list[bb] =
 alloc_INSN_LIST (insn, canon_modify_mem_list[bb]);
      bitmap_set_bit (blocks_with_calls, bb);
    }
  else
    note_stores (PATTERN (insn), canon_list_insert, (void*) insn);
}
