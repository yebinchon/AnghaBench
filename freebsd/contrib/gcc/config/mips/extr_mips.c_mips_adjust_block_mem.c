
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int HOST_WIDE_INT ;


 int BITS_PER_UNIT ;
 int BLKmode ;
 int MEM_ALIGN (int ) ;
 int MIN (int ,int) ;
 int XEXP (int ,int ) ;
 int change_address (int ,int ,int ) ;
 int copy_addr_to_reg (int ) ;
 int set_mem_align (int ,int ) ;

__attribute__((used)) static void
mips_adjust_block_mem (rtx mem, HOST_WIDE_INT length,
         rtx *loop_reg, rtx *loop_mem)
{
  *loop_reg = copy_addr_to_reg (XEXP (mem, 0));



  *loop_mem = change_address (mem, BLKmode, *loop_reg);
  set_mem_align (*loop_mem, MIN (MEM_ALIGN (mem), length * BITS_PER_UNIT));
}
