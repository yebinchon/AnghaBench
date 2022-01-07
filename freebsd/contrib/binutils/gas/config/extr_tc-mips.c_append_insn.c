
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_12__ ;
typedef struct TYPE_21__ TYPE_10__ ;


struct mips_hi_fixup {int seg; TYPE_12__* fixp; struct mips_hi_fixup* next; } ;
struct mips_cl_insn {int mips16_absolute_jump_p; int fixed_p; unsigned int insn_opcode; scalar_t__ where; TYPE_7__* frag; TYPE_12__** fixp; scalar_t__ noreorder_p; int use_extend; TYPE_1__* insn_mo; } ;
struct TYPE_24__ {int * label_list; } ;
typedef TYPE_2__ segment_info_type ;
struct TYPE_25__ {int partial_inplace; } ;
typedef TYPE_3__ reloc_howto_type ;
typedef scalar_t__ relax_stateT ;
typedef int fragS ;
struct TYPE_26__ {unsigned int X_add_number; scalar_t__ X_op; int X_add_symbol; } ;
typedef TYPE_4__ expressionS ;
typedef int bfd_reloc_code_real_type ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_30__ {scalar_t__ nomove; scalar_t__ mips16; scalar_t__ noreorder; scalar_t__ noat; int warn_about_macros; } ;
struct TYPE_29__ {int sequence; int* sizes; TYPE_12__* first_fixup; } ;
struct TYPE_28__ {scalar_t__ fr_type; int fr_fix; } ;
struct TYPE_27__ {int fr_fix; } ;
struct TYPE_23__ {unsigned long pinfo; } ;
struct TYPE_22__ {int fx_no_overflow; int fx_tcbit; int fx_size; scalar_t__ fx_addsy; } ;
struct TYPE_21__ {int* sizes; } ;


 int BFD_RELOC_16 ;


 int BFD_RELOC_64 ;
 int BFD_RELOC_CTOR ;
 int BFD_RELOC_GPREL16 ;
 int BFD_RELOC_GPREL32 ;



 int BFD_RELOC_MIPS16_GPREL ;
 int BFD_RELOC_MIPS16_HI16_S ;

 int BFD_RELOC_MIPS16_LO16 ;




 int BFD_RELOC_MIPS_LITERAL ;
 int BFD_RELOC_MIPS_REL16 ;
 int BFD_RELOC_MIPS_RELGOT ;
 int BFD_RELOC_MIPS_SCN_DISP ;
 int BFD_RELOC_MIPS_SUB ;

 scalar_t__ ECOFF_DEBUGGING ;
 int EXTRACT_OPERAND (int ,struct mips_cl_insn) ;
 scalar_t__ FALSE ;
 int FD ;
 int FR ;
 int FS ;
 int FT ;
 scalar_t__ HAVE_64BIT_GPRS ;
 unsigned long INSN_COND_BRANCH_DELAY ;
 unsigned long INSN_COND_BRANCH_LIKELY ;
 unsigned long INSN_COP ;
 unsigned long INSN_READ_COND_CODE ;
 unsigned long INSN_READ_FPR_R ;
 unsigned long INSN_READ_FPR_S ;
 unsigned long INSN_READ_FPR_T ;
 unsigned long INSN_READ_GPR_S ;
 unsigned long INSN_READ_GPR_T ;
 unsigned long INSN_SYNC ;
 unsigned long INSN_TRAP ;
 unsigned long INSN_UNCOND_BRANCH_DELAY ;
 unsigned long INSN_WRITE_COND_CODE ;
 unsigned long INSN_WRITE_FPR_D ;
 unsigned long INSN_WRITE_FPR_S ;
 unsigned long INSN_WRITE_FPR_T ;
 unsigned long INSN_WRITE_GPR_31 ;
 unsigned long INSN_WRITE_GPR_D ;
 unsigned long INSN_WRITE_GPR_T ;
 scalar_t__ ISA_SUPPORTS_MIPS16E ;
 int MIPS16OP_EXTRACT_REG32R (int) ;
 int MIPS16_EXTRACT_OPERAND (int ,struct mips_cl_insn) ;
 unsigned long MIPS16_INSN_READ_31 ;
 unsigned long MIPS16_INSN_READ_GPR_X ;
 unsigned long MIPS16_INSN_READ_PC ;
 unsigned long MIPS16_INSN_READ_SP ;
 unsigned long MIPS16_INSN_READ_T ;
 unsigned long MIPS16_INSN_READ_X ;
 unsigned long MIPS16_INSN_READ_Y ;
 unsigned long MIPS16_INSN_READ_Z ;
 unsigned long MIPS16_INSN_WRITE_31 ;
 unsigned long MIPS16_INSN_WRITE_GPR_Y ;
 unsigned long MIPS16_INSN_WRITE_SP ;
 unsigned long MIPS16_INSN_WRITE_T ;
 unsigned long MIPS16_INSN_WRITE_X ;
 unsigned long MIPS16_INSN_WRITE_Y ;
 unsigned long MIPS16_INSN_WRITE_Z ;
 int MIPS16_REG ;
 int MIPS_GR_REG ;
 int MOVE32Z ;
 struct mips_cl_insn* NOP_INSN ;
 scalar_t__ NO_PIC ;
 scalar_t__ O_constant ;
 int RA ;
 int RD ;
 int REGR32 ;
 int RELAX_BRANCH_ENCODE (unsigned long,unsigned long,unsigned long,int ) ;
 int RELAX_MIPS16_ENCODE (int,int ,int ,unsigned long,int) ;
 int RS ;
 int RT ;
 int RX ;
 int RY ;
 int RZ ;
 int SP ;
 int TREG ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 int add_fixed_insn (struct mips_cl_insn*) ;
 int add_relaxed_insn (struct mips_cl_insn*,int,int,int ,int ,unsigned int) ;
 int as_bad (int ,unsigned long) ;
 int as_warn (int ) ;
 int assert (int) ;
 int bfd_get_reloc_size (TYPE_3__*) ;
 TYPE_3__* bfd_reloc_type_lookup (int ,int) ;
 int dwarf2_emit_insn (int) ;
 int ecoff_fix_loc (int *,unsigned long) ;
 int emit_nop () ;
 TYPE_12__* fix_new (TYPE_7__*,scalar_t__,int ,int *,int ,scalar_t__,int) ;
 TYPE_12__* fix_new_exp (TYPE_7__*,scalar_t__,int ,TYPE_4__*,int,int) ;
 int fixup_has_matching_lo_p (TYPE_12__*) ;
 int frag_grow (int) ;
 int * frag_now ;
 unsigned long frag_now_fix () ;
 int frag_room () ;
 struct mips_cl_insn* history ;
 int insert_into_history (int ,int,struct mips_cl_insn*) ;
 scalar_t__ insn_length (struct mips_cl_insn*) ;
 scalar_t__ insn_uses_reg (struct mips_cl_insn*,int,int ) ;
 int install_insn (struct mips_cl_insn*) ;
 int internalError () ;
 int know (int) ;
 scalar_t__ listing ;
 int listing_prev_line () ;
 int make_expr_symbol (TYPE_4__*) ;
 int mips16_ext ;
 int mips16_mark_labels () ;
 int mips16_small ;
 int mips_clear_insn_labels () ;
 int* mips_cprmask ;
 int mips_gprmask ;
 struct mips_hi_fixup* mips_hi_fixup_list ;
 TYPE_10__ mips_macro_warning ;
 int mips_move_labels () ;
 int mips_no_prev_insn () ;
 int mips_optimize ;
 TYPE_9__ mips_opts ;
 scalar_t__ mips_pic ;
 TYPE_8__ mips_relax ;
 scalar_t__ mips_relax_branch ;
 int move_insn (struct mips_cl_insn*,TYPE_7__*,scalar_t__) ;
 scalar_t__ nops_for_insn (struct mips_cl_insn*,struct mips_cl_insn*) ;
 scalar_t__ nops_for_insn_or_target (struct mips_cl_insn*,struct mips_cl_insn*) ;
 scalar_t__ nops_for_sequence (int,struct mips_cl_insn*,struct mips_cl_insn*,struct mips_cl_insn*) ;
 int now_seg ;
 TYPE_6__* prev_nop_frag ;
 int prev_nop_frag_holds ;
 int prev_nop_frag_required ;
 int prev_nop_frag_since ;
 int relax_close_frag () ;
 int relaxed_branch_length (int *,int *,int) ;
 scalar_t__ reloc_needs_lo_p (int) ;
 scalar_t__ rs_machine_dependent ;
 TYPE_2__* seg_info (int ) ;
 int stdoutput ;
 int* symbol_get_tc (scalar_t__) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
append_insn (struct mips_cl_insn *ip, expressionS *address_expr,
      bfd_reloc_code_real_type *reloc_type)
{
  unsigned long prev_pinfo, pinfo;
  relax_stateT prev_insn_frag_type = 0;
  bfd_boolean relaxed_branch = FALSE;
  segment_info_type *si = seg_info (now_seg);


  mips16_mark_labels ();

  prev_pinfo = history[0].insn_mo->pinfo;
  pinfo = ip->insn_mo->pinfo;

  if (mips_relax.sequence != 2 && !mips_opts.noreorder)
    {







      int nops = (mips_optimize == 0
    ? nops_for_insn (history, ((void*)0))
    : nops_for_insn_or_target (history, ip));
      if (nops > 0)
 {
   fragS *old_frag;
   unsigned long old_frag_offset;
   int i;

   old_frag = frag_now;
   old_frag_offset = frag_now_fix ();

   for (i = 0; i < nops; i++)
     emit_nop ();

   if (listing)
     {
       listing_prev_line ();
       frag_grow (40);
     }

   mips_move_labels ();


   if (ECOFF_DEBUGGING)
     ecoff_fix_loc (old_frag, old_frag_offset);

 }
    }
  else if (mips_relax.sequence != 2 && prev_nop_frag != ((void*)0))
    {

      int nops = nops_for_insn_or_target (history, ip);
      assert (nops <= prev_nop_frag_holds);


      if (nops > prev_nop_frag_required)
 prev_nop_frag_required = nops;

      if (prev_nop_frag_holds == prev_nop_frag_required)
 {


   prev_nop_frag = ((void*)0);
   insert_into_history (prev_nop_frag_since,
          prev_nop_frag_holds, NOP_INSN);
 }
      else
 {


   prev_nop_frag->fr_fix -= mips_opts.mips16 ? 2 : 4;
   prev_nop_frag_holds--;
   prev_nop_frag_since++;
 }
    }
  if (history[0].frag)
    prev_insn_frag_type = history[0].frag->fr_type;

  if (address_expr
      && *reloc_type == 138
      && (pinfo & INSN_UNCOND_BRANCH_DELAY || pinfo & INSN_COND_BRANCH_DELAY
   || pinfo & INSN_COND_BRANCH_LIKELY)
      && mips_relax_branch



      && !mips_opts.warn_about_macros
      && !(mips_opts.noat && mips_pic != NO_PIC)
      && !mips_opts.mips16)
    {
      relaxed_branch = TRUE;
      add_relaxed_insn (ip, (relaxed_branch_length
        (((void*)0), ((void*)0),
         (pinfo & INSN_UNCOND_BRANCH_DELAY) ? -1
         : (pinfo & INSN_COND_BRANCH_LIKELY) ? 1
         : 0)), 4,
   RELAX_BRANCH_ENCODE
   (pinfo & INSN_UNCOND_BRANCH_DELAY,
    pinfo & INSN_COND_BRANCH_LIKELY,
    pinfo & INSN_WRITE_GPR_31,
    0),
   address_expr->X_add_symbol,
   address_expr->X_add_number);
      *reloc_type = 128;
    }
  else if (*reloc_type > 128)
    {

      assert (mips_opts.mips16 && address_expr != ((void*)0));
      add_relaxed_insn (ip, 4, 0,
   RELAX_MIPS16_ENCODE
   (*reloc_type - 128,
    mips16_small, mips16_ext,
    prev_pinfo & INSN_UNCOND_BRANCH_DELAY,
    history[0].mips16_absolute_jump_p),
   make_expr_symbol (address_expr), 0);
    }
  else if (mips_opts.mips16
    && ! ip->use_extend
    && *reloc_type != 133)
    {
      if ((pinfo & INSN_UNCOND_BRANCH_DELAY) == 0)


 frag_grow (6);
      add_fixed_insn (ip);
    }
  else
    {
      if (mips_opts.mips16
   && mips_opts.noreorder
   && (prev_pinfo & INSN_UNCOND_BRANCH_DELAY) != 0)
 as_warn (_("extended instruction in delay slot"));

      if (mips_relax.sequence)
 {



   if (frag_room () < 4)
     relax_close_frag ();
   mips_relax.sizes[mips_relax.sequence - 1] += 4;
 }

      if (mips_relax.sequence != 2)
 mips_macro_warning.sizes[0] += 4;
      if (mips_relax.sequence != 1)
 mips_macro_warning.sizes[1] += 4;

      if (mips_opts.mips16)
 {
   ip->fixed_p = 1;
   ip->mips16_absolute_jump_p = (*reloc_type == 133);
 }
      add_fixed_insn (ip);
    }

  if (address_expr != ((void*)0) && *reloc_type <= 128)
    {
      if (address_expr->X_op == O_constant)
 {
   unsigned int tmp;

   switch (*reloc_type)
     {
     case 137:
       ip->insn_opcode |= address_expr->X_add_number;
       break;

     case 130:
       tmp = (address_expr->X_add_number + 0x800080008000ull) >> 48;
       ip->insn_opcode |= tmp & 0xffff;
       break;

     case 131:
       tmp = (address_expr->X_add_number + 0x80008000ull) >> 32;
       ip->insn_opcode |= tmp & 0xffff;
       break;

     case 135:
       tmp = (address_expr->X_add_number + 0x8000) >> 16;
       ip->insn_opcode |= tmp & 0xffff;
       break;

     case 136:
       ip->insn_opcode |= (address_expr->X_add_number >> 16) & 0xffff;
       break;

     case 128:
     case 134:
     case 132:
       ip->insn_opcode |= address_expr->X_add_number & 0xffff;
       break;

     case 129:
       if ((address_expr->X_add_number & 3) != 0)
  as_bad (_("jump to misaligned address (0x%lx)"),
   (unsigned long) address_expr->X_add_number);
       ip->insn_opcode |= (address_expr->X_add_number >> 2) & 0x3ffffff;
       break;

     case 133:
       if ((address_expr->X_add_number & 3) != 0)
  as_bad (_("jump to misaligned address (0x%lx)"),
   (unsigned long) address_expr->X_add_number);
       ip->insn_opcode |=
  (((address_expr->X_add_number & 0x7c0000) << 3)
   | ((address_expr->X_add_number & 0xf800000) >> 7)
   | ((address_expr->X_add_number & 0x3fffc) >> 2));
       break;

     case 138:
       if ((address_expr->X_add_number & 3) != 0)
  as_bad (_("branch to misaligned address (0x%lx)"),
   (unsigned long) address_expr->X_add_number);
       if (mips_relax_branch)
  goto need_reloc;
       if ((address_expr->X_add_number + 0x20000) & ~0x3ffff)
  as_bad (_("branch address range overflow (0x%lx)"),
   (unsigned long) address_expr->X_add_number);
       ip->insn_opcode |= (address_expr->X_add_number >> 2) & 0xffff;
       break;

     default:
       internalError ();
     }
 }
      else if (*reloc_type < 128)
 need_reloc:
 {
   reloc_howto_type *howto;
   int i;



   for (i = 1; i < 3; i++)
     if (reloc_type[i] == 128)
       break;

   howto = bfd_reloc_type_lookup (stdoutput, reloc_type[i - 1]);
   ip->fixp[0] = fix_new_exp (ip->frag, ip->where,
         bfd_get_reloc_size (howto),
         address_expr,
         reloc_type[0] == 138,
         reloc_type[0]);


   if (reloc_type[0] == 133
       && ip->fixp[0]->fx_addsy)
     *symbol_get_tc (ip->fixp[0]->fx_addsy) = 1;



   if (HAVE_64BIT_GPRS
       && ! howto->partial_inplace
       && (reloc_type[0] == BFD_RELOC_16
    || reloc_type[0] == 137
    || reloc_type[0] == 129
    || reloc_type[0] == 135
    || reloc_type[0] == 134
    || reloc_type[0] == BFD_RELOC_GPREL16
    || reloc_type[0] == BFD_RELOC_MIPS_LITERAL
    || reloc_type[0] == BFD_RELOC_GPREL32
    || reloc_type[0] == BFD_RELOC_64
    || reloc_type[0] == BFD_RELOC_CTOR
    || reloc_type[0] == BFD_RELOC_MIPS_SUB
    || reloc_type[0] == 130
    || reloc_type[0] == 131
    || reloc_type[0] == BFD_RELOC_MIPS_SCN_DISP
    || reloc_type[0] == BFD_RELOC_MIPS_REL16
    || reloc_type[0] == BFD_RELOC_MIPS_RELGOT
    || reloc_type[0] == BFD_RELOC_MIPS16_GPREL
    || reloc_type[0] == BFD_RELOC_MIPS16_HI16_S
    || reloc_type[0] == BFD_RELOC_MIPS16_LO16))
     ip->fixp[0]->fx_no_overflow = 1;

   if (mips_relax.sequence)
     {
       if (mips_relax.first_fixup == 0)
  mips_relax.first_fixup = ip->fixp[0];
     }
   else if (reloc_needs_lo_p (*reloc_type))
     {
       struct mips_hi_fixup *hi_fixup;


       hi_fixup = mips_hi_fixup_list;
       if (hi_fixup == 0
    || !fixup_has_matching_lo_p (hi_fixup->fixp))
  {
    hi_fixup = ((struct mips_hi_fixup *)
         xmalloc (sizeof (struct mips_hi_fixup)));
    hi_fixup->next = mips_hi_fixup_list;
    mips_hi_fixup_list = hi_fixup;
  }
       hi_fixup->fixp = ip->fixp[0];
       hi_fixup->seg = now_seg;
     }






   for (i = 1; i < 3; i++)
     if (reloc_type[i] != 128)
       {
  ip->fixp[i] = fix_new (ip->frag, ip->where,
           ip->fixp[0]->fx_size, ((void*)0), 0,
           FALSE, reloc_type[i]);


  ip->fixp[0]->fx_tcbit = 1;
  ip->fixp[i]->fx_tcbit = 1;
       }
 }
    }
  install_insn (ip);


  if (! mips_opts.mips16)
    {
      if (pinfo & INSN_WRITE_GPR_D)
 mips_gprmask |= 1 << EXTRACT_OPERAND (RD, *ip);
      if ((pinfo & (INSN_WRITE_GPR_T | INSN_READ_GPR_T)) != 0)
 mips_gprmask |= 1 << EXTRACT_OPERAND (RT, *ip);
      if (pinfo & INSN_READ_GPR_S)
 mips_gprmask |= 1 << EXTRACT_OPERAND (RS, *ip);
      if (pinfo & INSN_WRITE_GPR_31)
 mips_gprmask |= 1 << RA;
      if (pinfo & INSN_WRITE_FPR_D)
 mips_cprmask[1] |= 1 << EXTRACT_OPERAND (FD, *ip);
      if ((pinfo & (INSN_WRITE_FPR_S | INSN_READ_FPR_S)) != 0)
 mips_cprmask[1] |= 1 << EXTRACT_OPERAND (FS, *ip);
      if ((pinfo & (INSN_WRITE_FPR_T | INSN_READ_FPR_T)) != 0)
 mips_cprmask[1] |= 1 << EXTRACT_OPERAND (FT, *ip);
      if ((pinfo & INSN_READ_FPR_R) != 0)
 mips_cprmask[1] |= 1 << EXTRACT_OPERAND (FR, *ip);
      if (pinfo & INSN_COP)
 {




 }

      mips_gprmask &= ~(1 << 0);
    }
  else
    {
      if (pinfo & (MIPS16_INSN_WRITE_X | MIPS16_INSN_READ_X))
 mips_gprmask |= 1 << MIPS16_EXTRACT_OPERAND (RX, *ip);
      if (pinfo & (MIPS16_INSN_WRITE_Y | MIPS16_INSN_READ_Y))
 mips_gprmask |= 1 << MIPS16_EXTRACT_OPERAND (RY, *ip);
      if (pinfo & MIPS16_INSN_WRITE_Z)
 mips_gprmask |= 1 << MIPS16_EXTRACT_OPERAND (RZ, *ip);
      if (pinfo & (MIPS16_INSN_WRITE_T | MIPS16_INSN_READ_T))
 mips_gprmask |= 1 << TREG;
      if (pinfo & (MIPS16_INSN_WRITE_SP | MIPS16_INSN_READ_SP))
 mips_gprmask |= 1 << SP;
      if (pinfo & (MIPS16_INSN_WRITE_31 | MIPS16_INSN_READ_31))
 mips_gprmask |= 1 << RA;
      if (pinfo & MIPS16_INSN_WRITE_GPR_Y)
 mips_gprmask |= 1 << MIPS16OP_EXTRACT_REG32R (ip->insn_opcode);
      if (pinfo & MIPS16_INSN_READ_Z)
 mips_gprmask |= 1 << MIPS16_EXTRACT_OPERAND (MOVE32Z, *ip);
      if (pinfo & MIPS16_INSN_READ_GPR_X)
 mips_gprmask |= 1 << MIPS16_EXTRACT_OPERAND (REGR32, *ip);
    }

  if (mips_relax.sequence != 2 && !mips_opts.noreorder)
    {





      if ((pinfo & INSN_UNCOND_BRANCH_DELAY)
   || (pinfo & INSN_COND_BRANCH_DELAY))
 {
   if (mips_optimize < 2


       || mips_opts.nomove != 0


       || history[0].fixed_p
       || history[1].noreorder_p





       || si->label_list != ((void*)0)




       || (! mips_opts.mips16
    && prev_insn_frag_type == rs_machine_dependent)


       || nops_for_insn (history + 1, ip) > 0


       || nops_for_sequence (2, history + 1, ip, history) > 0



       || (prev_pinfo & INSN_TRAP)


       || (! mips_opts.mips16
    && (prev_pinfo & INSN_WRITE_GPR_T)
    && insn_uses_reg (ip, EXTRACT_OPERAND (RT, history[0]),
        MIPS_GR_REG))
       || (! mips_opts.mips16
    && (prev_pinfo & INSN_WRITE_GPR_D)
    && insn_uses_reg (ip, EXTRACT_OPERAND (RD, history[0]),
        MIPS_GR_REG))
       || (mips_opts.mips16
    && (((prev_pinfo & MIPS16_INSN_WRITE_X)
         && (insn_uses_reg
      (ip, MIPS16_EXTRACT_OPERAND (RX, history[0]),
       MIPS16_REG)))
        || ((prev_pinfo & MIPS16_INSN_WRITE_Y)
     && (insn_uses_reg
         (ip, MIPS16_EXTRACT_OPERAND (RY, history[0]),
          MIPS16_REG)))
        || ((prev_pinfo & MIPS16_INSN_WRITE_Z)
     && (insn_uses_reg
         (ip, MIPS16_EXTRACT_OPERAND (RZ, history[0]),
          MIPS16_REG)))
        || ((prev_pinfo & MIPS16_INSN_WRITE_T)
     && insn_uses_reg (ip, TREG, MIPS_GR_REG))
        || ((prev_pinfo & MIPS16_INSN_WRITE_31)
     && insn_uses_reg (ip, RA, MIPS_GR_REG))
        || ((prev_pinfo & MIPS16_INSN_WRITE_GPR_Y)
     && insn_uses_reg (ip,
         MIPS16OP_EXTRACT_REG32R
           (history[0].insn_opcode),
         MIPS_GR_REG))))



       || (! mips_opts.mips16
    && (prev_pinfo & INSN_WRITE_GPR_T)
    && (((pinfo & INSN_WRITE_GPR_D)
         && (EXTRACT_OPERAND (RT, history[0])
      == EXTRACT_OPERAND (RD, *ip)))
        || ((pinfo & INSN_WRITE_GPR_31)
     && EXTRACT_OPERAND (RT, history[0]) == RA)))
       || (! mips_opts.mips16
    && (prev_pinfo & INSN_WRITE_GPR_D)
    && (((pinfo & INSN_WRITE_GPR_D)
         && (EXTRACT_OPERAND (RD, history[0])
      == EXTRACT_OPERAND (RD, *ip)))
        || ((pinfo & INSN_WRITE_GPR_31)
     && EXTRACT_OPERAND (RD, history[0]) == RA)))
       || (mips_opts.mips16
    && (pinfo & MIPS16_INSN_WRITE_31)
    && ((prev_pinfo & MIPS16_INSN_WRITE_31)
        || ((prev_pinfo & MIPS16_INSN_WRITE_GPR_Y)
     && (MIPS16OP_EXTRACT_REG32R (history[0].insn_opcode)
         == RA))))



       || (! mips_opts.mips16
    && (pinfo & INSN_WRITE_GPR_D)
    && insn_uses_reg (&history[0],
        EXTRACT_OPERAND (RD, *ip),
        MIPS_GR_REG))
       || (! mips_opts.mips16
    && (pinfo & INSN_WRITE_GPR_31)
    && insn_uses_reg (&history[0], RA, MIPS_GR_REG))
       || (mips_opts.mips16
    && (pinfo & MIPS16_INSN_WRITE_31)
    && insn_uses_reg (&history[0], RA, MIPS_GR_REG))


       || ((pinfo & INSN_READ_COND_CODE)
    && (prev_pinfo & INSN_WRITE_COND_CODE))
       || ((pinfo & INSN_WRITE_COND_CODE)
    && (prev_pinfo & INSN_READ_COND_CODE))


       || (mips_opts.mips16
    && (prev_pinfo & MIPS16_INSN_READ_PC))



       || (mips_opts.mips16 && history[0].fixp[0])


       || (prev_pinfo & INSN_SYNC))
     {
       if (mips_opts.mips16
    && (pinfo & INSN_UNCOND_BRANCH_DELAY)
    && (pinfo & (MIPS16_INSN_READ_X | MIPS16_INSN_READ_31))
    && ISA_SUPPORTS_MIPS16E)
  {

    ip->insn_opcode |= 0x0080;
    install_insn (ip);
    insert_into_history (0, 1, ip);
  }
       else
  {




    insert_into_history (0, 1, ip);
    emit_nop ();
  }

       if (mips_relax.sequence)
  mips_relax.sizes[mips_relax.sequence - 1] += 4;
     }
   else
     {

       struct mips_cl_insn delay = history[0];
       if (mips_opts.mips16)
  {
    know (delay.frag == ip->frag);
                  move_insn (ip, delay.frag, delay.where);
    move_insn (&delay, ip->frag, ip->where + insn_length (ip));
  }
       else if (relaxed_branch)
  {




    delay.frag->fr_fix -= 4;
    if (delay.frag == ip->frag)
      move_insn (ip, ip->frag, ip->where - 4);
    add_fixed_insn (&delay);
  }
       else
  {
    move_insn (&delay, ip->frag, ip->where);
    move_insn (ip, history[0].frag, history[0].where);
  }
       history[0] = *ip;
       delay.fixed_p = 1;
       insert_into_history (0, 1, &delay);
     }



   if (pinfo & INSN_UNCOND_BRANCH_DELAY)
     mips_no_prev_insn ();
 }
      else if (pinfo & INSN_COND_BRANCH_LIKELY)
 {




   insert_into_history (0, 1, ip);
   emit_nop ();
 }
      else
 insert_into_history (0, 1, ip);
    }
  else
    insert_into_history (0, 1, ip);


  mips_clear_insn_labels ();
}
