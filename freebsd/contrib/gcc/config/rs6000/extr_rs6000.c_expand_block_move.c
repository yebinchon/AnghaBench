
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int BITS_PER_UNIT ;
 int BLKmode ;
 scalar_t__ CONST_INT ;
 int DImode ;
 int GEN_INT (int) ;
 scalar_t__ GET_CODE (int ) ;
 int HImode ;
 int INTVAL (int ) ;
 int MAX_MOVE_REG ;
 int QImode ;
 int REG_P (int ) ;
 int SImode ;
 int STRICT_ALIGNMENT ;
 scalar_t__ TARGET_ALTIVEC ;
 scalar_t__ TARGET_POWERPC64 ;
 scalar_t__ TARGET_STRING ;
 int V4SImode ;
 int XEXP (int ,int ) ;
 int adjust_address (int ,int,int) ;
 int copy_addr_to_reg (int ) ;
 int emit_insn (int ) ;
 int * fixed_regs ;
 int gcc_assert (int) ;
 int gen_movdi (int ,int ) ;
 int gen_movhi (int ,int ) ;
 int gen_movmemsi_1reg (int ,int ,int ,int ) ;
 int gen_movmemsi_2reg (int ,int ,int ,int ) ;
 int gen_movmemsi_4reg (int ,int ,int ,int ) ;
 int gen_movmemsi_6reg (int ,int ,int ,int ) ;
 int gen_movmemsi_8reg (int ,int ,int ,int ) ;
 int gen_movqi (int ,int ) ;
 int gen_movsi (int ,int ) ;
 int gen_movv4si (int ,int ) ;
 int gen_reg_rtx (int) ;
 int replace_equiv_address (int ,int ) ;
 int set_mem_size (int ,int ) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ,int ,int ) ;

int
expand_block_move (rtx operands[])
{
  rtx orig_dest = operands[0];
  rtx orig_src = operands[1];
  rtx bytes_rtx = operands[2];
  rtx align_rtx = operands[3];
  int constp = (GET_CODE (bytes_rtx) == CONST_INT);
  int align;
  int bytes;
  int offset;
  int move_bytes;
  rtx stores[MAX_MOVE_REG];
  int num_reg = 0;


  if (! constp)
    return 0;


  gcc_assert (GET_CODE (align_rtx) == CONST_INT);
  align = INTVAL (align_rtx) * BITS_PER_UNIT;


  bytes = INTVAL (bytes_rtx);
  if (bytes <= 0)
    return 1;



  if (bytes > (TARGET_POWERPC64 ? 64 : 32))
    return 0;

  for (offset = 0; bytes > 0; offset += move_bytes, bytes -= move_bytes)
    {
      union {
 rtx (*movmemsi) (rtx, rtx, rtx, rtx);
 rtx (*mov) (rtx, rtx);
      } gen_func;
      enum machine_mode mode = BLKmode;
      rtx src, dest;



      if (TARGET_ALTIVEC && bytes >= 16 && align >= 128)
 {
   move_bytes = 16;
   mode = V4SImode;
   gen_func.mov = gen_movv4si;
 }
      else if (TARGET_STRING
   && bytes > 24
   && ! fixed_regs[5]
   && ! fixed_regs[6]
   && ! fixed_regs[7]
   && ! fixed_regs[8]
   && ! fixed_regs[9]
   && ! fixed_regs[10]
   && ! fixed_regs[11]
   && ! fixed_regs[12])
 {
   move_bytes = (bytes > 32) ? 32 : bytes;
   gen_func.movmemsi = gen_movmemsi_8reg;
 }
      else if (TARGET_STRING
        && bytes > 16
        && ! fixed_regs[5]
        && ! fixed_regs[6]
        && ! fixed_regs[7]
        && ! fixed_regs[8]
        && ! fixed_regs[9]
        && ! fixed_regs[10])
 {
   move_bytes = (bytes > 24) ? 24 : bytes;
   gen_func.movmemsi = gen_movmemsi_6reg;
 }
      else if (TARGET_STRING
        && bytes > 8
        && ! fixed_regs[5]
        && ! fixed_regs[6]
        && ! fixed_regs[7]
        && ! fixed_regs[8])
 {
   move_bytes = (bytes > 16) ? 16 : bytes;
   gen_func.movmemsi = gen_movmemsi_4reg;
 }
      else if (bytes >= 8 && TARGET_POWERPC64


        && (align >= 64 || (!STRICT_ALIGNMENT && align >= 32)))
 {
   move_bytes = 8;
   mode = DImode;
   gen_func.mov = gen_movdi;
 }
      else if (TARGET_STRING && bytes > 4 && !TARGET_POWERPC64)
 {
   move_bytes = (bytes > 8) ? 8 : bytes;
   gen_func.movmemsi = gen_movmemsi_2reg;
 }
      else if (bytes >= 4 && (align >= 32 || !STRICT_ALIGNMENT))
 {
   move_bytes = 4;
   mode = SImode;
   gen_func.mov = gen_movsi;
 }
      else if (bytes >= 2 && (align >= 16 || !STRICT_ALIGNMENT))
 {
   move_bytes = 2;
   mode = HImode;
   gen_func.mov = gen_movhi;
 }
      else if (TARGET_STRING && bytes > 1)
 {
   move_bytes = (bytes > 4) ? 4 : bytes;
   gen_func.movmemsi = gen_movmemsi_1reg;
 }
      else
 {
   move_bytes = 1;
   mode = QImode;
   gen_func.mov = gen_movqi;
 }

      src = adjust_address (orig_src, mode, offset);
      dest = adjust_address (orig_dest, mode, offset);

      if (mode != BLKmode)
 {
   rtx tmp_reg = gen_reg_rtx (mode);

   emit_insn ((*gen_func.mov) (tmp_reg, src));
   stores[num_reg++] = (*gen_func.mov) (dest, tmp_reg);
 }

      if (mode == BLKmode || num_reg >= MAX_MOVE_REG || bytes == move_bytes)
 {
   int i;
   for (i = 0; i < num_reg; i++)
     emit_insn (stores[i]);
   num_reg = 0;
 }

      if (mode == BLKmode)
 {


   if (!REG_P (XEXP (src, 0)))
     {
       rtx src_reg = copy_addr_to_reg (XEXP (src, 0));
       src = replace_equiv_address (src, src_reg);
     }
   set_mem_size (src, GEN_INT (move_bytes));

   if (!REG_P (XEXP (dest, 0)))
     {
       rtx dest_reg = copy_addr_to_reg (XEXP (dest, 0));
       dest = replace_equiv_address (dest, dest_reg);
     }
   set_mem_size (dest, GEN_INT (move_bytes));

   emit_insn ((*gen_func.movmemsi) (dest, src,
        GEN_INT (move_bytes & 31),
        align_rtx));
 }
    }

  return 1;
}
