
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;
typedef enum tls_model { ____Placeholder_tls_model } tls_model ;


 size_t PIC_OFFSET_TABLE_REGNUM ;
 int Pmode ;
 int REG_EQUIV ;
 int TARGET_64BIT ;
 int TARGET_ANY_GNU_TLS ;
 int TARGET_GNU2_TLS ;
 int TARGET_TLS_DIRECT_SEG_REFS ;




 int UNSPEC_DTPOFF ;
 int UNSPEC_GOTNTPOFF ;
 int UNSPEC_GOTTPOFF ;
 int UNSPEC_INDNTPOFF ;
 int UNSPEC_NTPOFF ;
 int UNSPEC_TPOFF ;
 int VOIDmode ;
 int const0_rtx ;
 int emit_call_insn (int ) ;
 int emit_insn (int ) ;
 int emit_libcall_block (int *,int *,int *,int *) ;
 int end_sequence () ;
 int flag_pic ;
 int * force_reg (int ,int *) ;
 int gcc_unreachable () ;
 int * gen_const_mem (int ,int *) ;
 int * gen_reg_rtx (int ) ;
 int gen_rtvec (int,int *) ;
 int * gen_rtx_CONST (int ,int *) ;
 int * gen_rtx_EXPR_LIST (int ,int ,int *) ;
 int * gen_rtx_MINUS (int ,int *,int *) ;
 int * gen_rtx_PLUS (int ,int *,int *) ;
 int * gen_rtx_REG (int ,int ) ;
 int * gen_rtx_UNSPEC (int ,int ,int) ;
 int gen_set_got (int *) ;
 int gen_subsi3 (int *,int *,int *) ;
 int gen_tls_global_dynamic_32 (int *,int *) ;
 int gen_tls_global_dynamic_64 (int *,int *) ;
 int gen_tls_local_dynamic_base_32 (int *) ;
 int gen_tls_local_dynamic_base_64 (int *) ;
 int * get_insns () ;
 int get_last_insn () ;
 int * get_thread_pointer (int) ;
 int ix86_GOT_alias_set () ;
 int ix86_tls_get_addr () ;
 int * ix86_tls_module_base () ;
 int * pic_offset_table_rtx ;
 int* regs_ever_live ;
 int reload_in_progress ;
 int set_mem_alias_set (int *,int ) ;
 int set_unique_reg_note (int ,int ,int *) ;
 int start_sequence () ;

__attribute__((used)) static rtx
legitimize_tls_address (rtx x, enum tls_model model, int for_mov)
{
  rtx dest, base, off, pic, tp;
  int type;

  switch (model)
    {
    case 131:
      dest = gen_reg_rtx (Pmode);
      tp = TARGET_GNU2_TLS ? get_thread_pointer (1) : 0;

      if (TARGET_64BIT && ! TARGET_GNU2_TLS)
 {
   rtx rax = gen_rtx_REG (Pmode, 0), insns;

   start_sequence ();
   emit_call_insn (gen_tls_global_dynamic_64 (rax, x));
   insns = get_insns ();
   end_sequence ();

   emit_libcall_block (insns, dest, rax, x);
 }
      else if (TARGET_64BIT && TARGET_GNU2_TLS)
 emit_insn (gen_tls_global_dynamic_64 (dest, x));
      else
 emit_insn (gen_tls_global_dynamic_32 (dest, x));

      if (TARGET_GNU2_TLS)
 {
   dest = force_reg (Pmode, gen_rtx_PLUS (Pmode, tp, dest));

   set_unique_reg_note (get_last_insn (), REG_EQUIV, x);
 }
      break;

    case 129:
      base = gen_reg_rtx (Pmode);
      tp = TARGET_GNU2_TLS ? get_thread_pointer (1) : 0;

      if (TARGET_64BIT && ! TARGET_GNU2_TLS)
 {
   rtx rax = gen_rtx_REG (Pmode, 0), insns, note;

   start_sequence ();
   emit_call_insn (gen_tls_local_dynamic_base_64 (rax));
   insns = get_insns ();
   end_sequence ();

   note = gen_rtx_EXPR_LIST (VOIDmode, const0_rtx, ((void*)0));
   note = gen_rtx_EXPR_LIST (VOIDmode, ix86_tls_get_addr (), note);
   emit_libcall_block (insns, base, rax, note);
 }
      else if (TARGET_64BIT && TARGET_GNU2_TLS)
 emit_insn (gen_tls_local_dynamic_base_64 (base));
      else
 emit_insn (gen_tls_local_dynamic_base_32 (base));

      if (TARGET_GNU2_TLS)
 {
   rtx x = ix86_tls_module_base ();

   set_unique_reg_note (get_last_insn (), REG_EQUIV,
          gen_rtx_MINUS (Pmode, x, tp));
 }

      off = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, x), UNSPEC_DTPOFF);
      off = gen_rtx_CONST (Pmode, off);

      dest = force_reg (Pmode, gen_rtx_PLUS (Pmode, base, off));

      if (TARGET_GNU2_TLS)
 {
   dest = force_reg (Pmode, gen_rtx_PLUS (Pmode, dest, tp));

   set_unique_reg_note (get_last_insn (), REG_EQUIV, x);
 }

      break;

    case 130:
      if (TARGET_64BIT)
 {
   pic = ((void*)0);
   type = UNSPEC_GOTNTPOFF;
 }
      else if (flag_pic)
 {
   if (reload_in_progress)
     regs_ever_live[PIC_OFFSET_TABLE_REGNUM] = 1;
   pic = pic_offset_table_rtx;
   type = TARGET_ANY_GNU_TLS ? UNSPEC_GOTNTPOFF : UNSPEC_GOTTPOFF;
 }
      else if (!TARGET_ANY_GNU_TLS)
 {
   pic = gen_reg_rtx (Pmode);
   emit_insn (gen_set_got (pic));
   type = UNSPEC_GOTTPOFF;
 }
      else
 {
   pic = ((void*)0);
   type = UNSPEC_INDNTPOFF;
 }

      off = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, x), type);
      off = gen_rtx_CONST (Pmode, off);
      if (pic)
 off = gen_rtx_PLUS (Pmode, pic, off);
      off = gen_const_mem (Pmode, off);
      set_mem_alias_set (off, ix86_GOT_alias_set ());

      if (TARGET_64BIT || TARGET_ANY_GNU_TLS)
 {
          base = get_thread_pointer (for_mov || !TARGET_TLS_DIRECT_SEG_REFS);
   off = force_reg (Pmode, off);
   return gen_rtx_PLUS (Pmode, base, off);
 }
      else
 {
   base = get_thread_pointer (1);
   dest = gen_reg_rtx (Pmode);
   emit_insn (gen_subsi3 (dest, base, off));
 }
      break;

    case 128:
      off = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, x),
       (TARGET_64BIT || TARGET_ANY_GNU_TLS)
       ? UNSPEC_NTPOFF : UNSPEC_TPOFF);
      off = gen_rtx_CONST (Pmode, off);

      if (TARGET_64BIT || TARGET_ANY_GNU_TLS)
 {
   base = get_thread_pointer (for_mov || !TARGET_TLS_DIRECT_SEG_REFS);
   return gen_rtx_PLUS (Pmode, base, off);
 }
      else
 {
   base = get_thread_pointer (1);
   dest = gen_reg_rtx (Pmode);
   emit_insn (gen_subsi3 (dest, base, off));
 }
      break;

    default:
      gcc_unreachable ();
    }

  return dest;
}
