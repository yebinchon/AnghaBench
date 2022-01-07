
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ spe_64bit_regs_used; int abi; int first_gp_reg_save; int gp_size; int first_fp_reg_save; int fp_size; int first_altivec_reg_save; int altivec_size; int calls_p; int lr_save_p; int cr_save_p; int cr_size; int reg_size; int fixed_size; void* vars_size; int parm_size; int spe_gp_size; scalar_t__ vrsave_mask; int vrsave_size; int fp_save_offset; int gp_save_offset; int vrsave_save_offset; int altivec_padding_size; int altivec_save_offset; int ehrd_offset; int cr_save_offset; int lr_save_offset; int spe_padding_size; int spe_gp_save_offset; int save_size; int push_p; void* total_size; } ;
typedef TYPE_2__ rs6000_stack_t ;
typedef int info ;
struct TYPE_9__ {TYPE_1__* machine; } ;
struct TYPE_7__ {scalar_t__ insn_chain_scanned_p; scalar_t__ ra_needs_full_frame; } ;
typedef int HOST_WIDE_INT ;





 int ABI_STACK_BOUNDARY ;

 int BITS_PER_UNIT ;
 size_t CR2_REGNO ;
 size_t CR3_REGNO ;
 size_t CR4_REGNO ;
 int DEFAULT_ABI ;
 scalar_t__ EH_RETURN_DATA_REGNO (unsigned int) ;
 int FP_SAVE_INLINE (int) ;
 scalar_t__ FRAME_GROWS_DOWNWARD ;
 scalar_t__ INVALID_REGNUM ;
 int LAST_ALTIVEC_REGNO ;
 size_t LINK_REGISTER_REGNUM ;
 scalar_t__ NO_DEBUG ;
 void* RS6000_ALIGN (int,int) ;
 int RS6000_PIC_OFFSET_TABLE_REGNUM ;
 int RS6000_SAVE_AREA ;
 scalar_t__ TARGET_32BIT ;
 scalar_t__ TARGET_ALTIVEC ;
 scalar_t__ TARGET_ALTIVEC_ABI ;
 scalar_t__ TARGET_ALTIVEC_VRSAVE ;
 scalar_t__ TARGET_MINIMAL_TOC ;
 int TARGET_PROFILE_KERNEL ;
 scalar_t__ TARGET_RELOCATABLE ;
 scalar_t__ TARGET_SPE ;
 scalar_t__ TARGET_SPE_ABI ;
 scalar_t__ TARGET_TOC ;
 scalar_t__ TARGET_XCOFF ;
 unsigned int UNITS_PER_SPE_WORD ;
 unsigned int UNITS_PER_WORD ;
 TYPE_6__* cfun ;
 int compute_save_world_info (TYPE_2__*) ;
 scalar_t__ compute_vrsave_mask () ;
 scalar_t__ current_function_calls_alloca ;
 scalar_t__ current_function_calls_eh_return ;
 int current_function_is_leaf ;
 int current_function_outgoing_args_size ;
 scalar_t__ current_function_profile ;
 int first_altivec_reg_to_save () ;
 int first_fp_reg_to_save () ;
 int first_reg_to_save () ;
 int flag_pic ;
 scalar_t__ frame_pointer_needed ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int get_frame_size () ;
 scalar_t__ get_pool_size () ;
 int memset (TYPE_2__*,int ,int) ;
 int* regs_ever_live ;
 scalar_t__ rs6000_ra_ever_killed () ;
 scalar_t__ spe_func_has_64bit_regs_p () ;
 scalar_t__ write_symbols ;

__attribute__((used)) static rs6000_stack_t *
rs6000_stack_info (void)
{
  static rs6000_stack_t info;
  rs6000_stack_t *info_ptr = &info;
  int reg_size = TARGET_32BIT ? 4 : 8;
  int ehrd_size;
  int save_align;
  HOST_WIDE_INT non_fixed_size;

  memset (&info, 0, sizeof (info));

  if (TARGET_SPE)
    {

      if (cfun->machine->insn_chain_scanned_p == 0)
 cfun->machine->insn_chain_scanned_p
   = spe_func_has_64bit_regs_p () + 1;
      info_ptr->spe_64bit_regs_used = cfun->machine->insn_chain_scanned_p - 1;
    }


  info_ptr->abi = DEFAULT_ABI;


  info_ptr->first_gp_reg_save = first_reg_to_save ();


  if (((TARGET_TOC && TARGET_MINIMAL_TOC)
       || (flag_pic == 1 && DEFAULT_ABI == 128)
       || (flag_pic && DEFAULT_ABI == 130))
      && info_ptr->first_gp_reg_save > RS6000_PIC_OFFSET_TABLE_REGNUM)
    info_ptr->gp_size = reg_size * (32 - RS6000_PIC_OFFSET_TABLE_REGNUM);
  else
    info_ptr->gp_size = reg_size * (32 - info_ptr->first_gp_reg_save);
  if (TARGET_SPE_ABI && info_ptr->spe_64bit_regs_used != 0)
    info_ptr->gp_size = 0;

  info_ptr->first_fp_reg_save = first_fp_reg_to_save ();
  info_ptr->fp_size = 8 * (64 - info_ptr->first_fp_reg_save);

  info_ptr->first_altivec_reg_save = first_altivec_reg_to_save ();
  info_ptr->altivec_size = 16 * (LAST_ALTIVEC_REGNO + 1
     - info_ptr->first_altivec_reg_save);


  info_ptr->calls_p = (! current_function_is_leaf
         || cfun->machine->ra_needs_full_frame);


  if ((DEFAULT_ABI == 131
       && current_function_profile
       && !TARGET_PROFILE_KERNEL)



      || (info_ptr->first_fp_reg_save != 64
   && !FP_SAVE_INLINE (info_ptr->first_fp_reg_save))
      || info_ptr->first_altivec_reg_save <= LAST_ALTIVEC_REGNO
      || (DEFAULT_ABI == 128 && current_function_calls_alloca)
      || info_ptr->calls_p
      || rs6000_ra_ever_killed ())
    {
      info_ptr->lr_save_p = 1;
      regs_ever_live[LINK_REGISTER_REGNUM] = 1;
    }


  if (regs_ever_live[CR2_REGNO]
      || regs_ever_live[CR3_REGNO]
      || regs_ever_live[CR4_REGNO])
    {
      info_ptr->cr_save_p = 1;
      if (DEFAULT_ABI == 128)
 info_ptr->cr_size = reg_size;
    }




  if (current_function_calls_eh_return)
    {
      unsigned int i;
      for (i = 0; EH_RETURN_DATA_REGNO (i) != INVALID_REGNUM; ++i)
 continue;


      ehrd_size = i * (TARGET_SPE_ABI
         && info_ptr->spe_64bit_regs_used != 0
         ? UNITS_PER_SPE_WORD : UNITS_PER_WORD);
    }
  else
    ehrd_size = 0;


  info_ptr->reg_size = reg_size;
  info_ptr->fixed_size = RS6000_SAVE_AREA;
  info_ptr->vars_size = RS6000_ALIGN (get_frame_size (), 8);
  info_ptr->parm_size = RS6000_ALIGN (current_function_outgoing_args_size,
      TARGET_ALTIVEC ? 16 : 8);
  if (FRAME_GROWS_DOWNWARD)
    info_ptr->vars_size
      += RS6000_ALIGN (info_ptr->fixed_size + info_ptr->vars_size
         + info_ptr->parm_size,
         ABI_STACK_BOUNDARY / BITS_PER_UNIT)
  - (info_ptr->fixed_size + info_ptr->vars_size
     + info_ptr->parm_size);

  if (TARGET_SPE_ABI && info_ptr->spe_64bit_regs_used != 0)
    info_ptr->spe_gp_size = 8 * (32 - info_ptr->first_gp_reg_save);
  else
    info_ptr->spe_gp_size = 0;

  if (TARGET_ALTIVEC_ABI)
    info_ptr->vrsave_mask = compute_vrsave_mask ();
  else
    info_ptr->vrsave_mask = 0;

  if (TARGET_ALTIVEC_VRSAVE && info_ptr->vrsave_mask)
    info_ptr->vrsave_size = 4;
  else
    info_ptr->vrsave_size = 0;

  compute_save_world_info (info_ptr);


  switch (DEFAULT_ABI)
    {
    case 129:
    default:
      gcc_unreachable ();

    case 131:
    case 130:
      info_ptr->fp_save_offset = - info_ptr->fp_size;
      info_ptr->gp_save_offset = info_ptr->fp_save_offset - info_ptr->gp_size;

      if (TARGET_ALTIVEC_ABI)
 {
   info_ptr->vrsave_save_offset
     = info_ptr->gp_save_offset - info_ptr->vrsave_size;



   if (info_ptr->altivec_size != 0)
     info_ptr->altivec_padding_size
       = info_ptr->vrsave_save_offset & 0xF;
   else
     info_ptr->altivec_padding_size = 0;

   info_ptr->altivec_save_offset
     = info_ptr->vrsave_save_offset
     - info_ptr->altivec_padding_size
     - info_ptr->altivec_size;
   gcc_assert (info_ptr->altivec_size == 0
        || info_ptr->altivec_save_offset % 16 == 0);


   info_ptr->ehrd_offset = info_ptr->altivec_save_offset - ehrd_size;
 }
      else
 info_ptr->ehrd_offset = info_ptr->gp_save_offset - ehrd_size;
      info_ptr->cr_save_offset = reg_size;
      info_ptr->lr_save_offset = 2*reg_size;
      break;

    case 128:
      info_ptr->fp_save_offset = - info_ptr->fp_size;
      info_ptr->gp_save_offset = info_ptr->fp_save_offset - info_ptr->gp_size;
      info_ptr->cr_save_offset = info_ptr->gp_save_offset - info_ptr->cr_size;

      if (TARGET_SPE_ABI && info_ptr->spe_64bit_regs_used != 0)
 {


   if (info_ptr->spe_gp_size != 0)
     info_ptr->spe_padding_size
       = 8 - (-info_ptr->cr_save_offset % 8);
   else
     info_ptr->spe_padding_size = 0;

   info_ptr->spe_gp_save_offset
     = info_ptr->cr_save_offset
     - info_ptr->spe_padding_size
     - info_ptr->spe_gp_size;


   info_ptr->ehrd_offset = info_ptr->spe_gp_save_offset;
 }
      else if (TARGET_ALTIVEC_ABI)
 {
   info_ptr->vrsave_save_offset
     = info_ptr->cr_save_offset - info_ptr->vrsave_size;


   if (info_ptr->altivec_size != 0)
     info_ptr->altivec_padding_size
       = 16 - (-info_ptr->vrsave_save_offset % 16);
   else
     info_ptr->altivec_padding_size = 0;

   info_ptr->altivec_save_offset
     = info_ptr->vrsave_save_offset
     - info_ptr->altivec_padding_size
     - info_ptr->altivec_size;


   info_ptr->ehrd_offset = info_ptr->altivec_save_offset;
 }
      else
 info_ptr->ehrd_offset = info_ptr->cr_save_offset;
      info_ptr->ehrd_offset -= ehrd_size;
      info_ptr->lr_save_offset = reg_size;
      break;
    }

  save_align = (TARGET_ALTIVEC_ABI || DEFAULT_ABI == 130) ? 16 : 8;
  info_ptr->save_size = RS6000_ALIGN (info_ptr->fp_size
      + info_ptr->gp_size
      + info_ptr->altivec_size
      + info_ptr->altivec_padding_size
      + info_ptr->spe_gp_size
      + info_ptr->spe_padding_size
      + ehrd_size
      + info_ptr->cr_size
      + info_ptr->vrsave_size,
      save_align);

  non_fixed_size = (info_ptr->vars_size
       + info_ptr->parm_size
       + info_ptr->save_size);

  info_ptr->total_size = RS6000_ALIGN (non_fixed_size + info_ptr->fixed_size,
           ABI_STACK_BOUNDARY / BITS_PER_UNIT);
  if (info_ptr->calls_p)
    info_ptr->push_p = 1;

  else if (DEFAULT_ABI == 128)
    info_ptr->push_p = non_fixed_size != 0;

  else if (frame_pointer_needed)
    info_ptr->push_p = 1;

  else if (TARGET_XCOFF && write_symbols != NO_DEBUG)
    info_ptr->push_p = 1;

  else
    info_ptr->push_p = non_fixed_size > (TARGET_32BIT ? 220 : 288);


  if (info_ptr->fp_size == 0)
    info_ptr->fp_save_offset = 0;

  if (info_ptr->gp_size == 0)
    info_ptr->gp_save_offset = 0;

  if (! TARGET_ALTIVEC_ABI || info_ptr->altivec_size == 0)
    info_ptr->altivec_save_offset = 0;

  if (! TARGET_ALTIVEC_ABI || info_ptr->vrsave_mask == 0)
    info_ptr->vrsave_save_offset = 0;

  if (! TARGET_SPE_ABI
      || info_ptr->spe_64bit_regs_used == 0
      || info_ptr->spe_gp_size == 0)
    info_ptr->spe_gp_save_offset = 0;

  if (! info_ptr->lr_save_p)
    info_ptr->lr_save_offset = 0;

  if (! info_ptr->cr_save_p)
    info_ptr->cr_save_offset = 0;

  return info_ptr;
}
