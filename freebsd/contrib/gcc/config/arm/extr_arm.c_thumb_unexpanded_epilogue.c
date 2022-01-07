
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int IP_REGNUM ;
 scalar_t__ IS_NAKED (int ) ;
 int LAST_ARG_REGNUM ;
 int LAST_LO_REGNUM ;
 int LR_REGNUM ;
 int PC_REGNUM ;
 int SP_REGNUM ;
 scalar_t__ TARGET_BACKTRACE ;
 int arm_current_func_type () ;
 int arm_size_return_regs () ;
 int asm_fprintf (int ,char*,int,int,...) ;
 int asm_out_file ;
 int bit_count (unsigned long) ;
 scalar_t__ current_function_pretend_args_size ;
 int internal_error (char*) ;
 scalar_t__ return_used_this_function ;
 unsigned long thumb_compute_save_reg_mask () ;
 int thumb_exit (int ,int) ;
 int thumb_pushpop (int ,int,int ,int *,int) ;

const char *
thumb_unexpanded_epilogue (void)
{
  int regno;
  unsigned long live_regs_mask = 0;
  int high_regs_pushed = 0;
  int had_to_push_lr;
  int size;

  if (return_used_this_function)
    return "";

  if (IS_NAKED (arm_current_func_type ()))
    return "";

  live_regs_mask = thumb_compute_save_reg_mask ();
  high_regs_pushed = bit_count (live_regs_mask & 0x0f00);





  size = arm_size_return_regs ();
  if (high_regs_pushed)
    {
      unsigned long mask = live_regs_mask & 0xff;
      int next_hi_reg;



      if (size <= 12)
 mask |= 1 << 3;
      if (size <= 8)
 mask |= 1 << 2;

      if (mask == 0)


 internal_error
   ("no low registers available for popping high registers");

      for (next_hi_reg = 8; next_hi_reg < 13; next_hi_reg++)
 if (live_regs_mask & (1 << next_hi_reg))
   break;

      while (high_regs_pushed)
 {


   for (regno = 0; regno <= LAST_LO_REGNUM; regno++)
     {
       if (mask & (1 << regno))
  high_regs_pushed--;
       if (high_regs_pushed == 0)
  break;
     }

   mask &= (2 << regno) - 1;


   thumb_pushpop (asm_out_file, mask, 0, ((void*)0), mask);


   for (regno = 0; regno <= LAST_LO_REGNUM; regno++)
     {
       if (mask & (1 << regno))
  {
    asm_fprintf (asm_out_file, "\tmov\t%r, %r\n", next_hi_reg,
          regno);

    for (next_hi_reg++; next_hi_reg < 13; next_hi_reg++)
      if (live_regs_mask & (1 << next_hi_reg))
        break;
  }
     }
 }
      live_regs_mask &= ~0x0f00;
    }

  had_to_push_lr = (live_regs_mask & (1 << LR_REGNUM)) != 0;
  live_regs_mask &= 0xff;

  if (current_function_pretend_args_size == 0 || TARGET_BACKTRACE)
    {

      if (had_to_push_lr)
 live_regs_mask |= 1 << PC_REGNUM;




      if (live_regs_mask)
 thumb_pushpop (asm_out_file, live_regs_mask, FALSE, ((void*)0),
         live_regs_mask);



      if (!had_to_push_lr)
 thumb_exit (asm_out_file, LR_REGNUM);
    }
  else
    {

      if (live_regs_mask)
 thumb_pushpop (asm_out_file, live_regs_mask, FALSE, ((void*)0),
         live_regs_mask);

      if (had_to_push_lr)
 {
   if (size > 12)
     {

       asm_fprintf (asm_out_file, "\tmov\t%r, %r\n", IP_REGNUM,
      LAST_ARG_REGNUM);
     }


   thumb_pushpop (asm_out_file, 1 << LAST_ARG_REGNUM, 0, ((void*)0),
    1 << LAST_ARG_REGNUM);

   if (size > 12)
     {

       asm_fprintf (asm_out_file, "\tmov\t%r, %r\n", LR_REGNUM,
      LAST_ARG_REGNUM);

       asm_fprintf (asm_out_file, "\tmov\t%r, %r\n", LAST_ARG_REGNUM,
      IP_REGNUM);
       regno = LR_REGNUM;
     }
   else
     regno = LAST_ARG_REGNUM;
 }
      else
 regno = LR_REGNUM;


      asm_fprintf (asm_out_file, "\tadd\t%r, %r, #%d\n",
     SP_REGNUM, SP_REGNUM,
     current_function_pretend_args_size);

      thumb_exit (asm_out_file, regno);
    }

  return "";
}
