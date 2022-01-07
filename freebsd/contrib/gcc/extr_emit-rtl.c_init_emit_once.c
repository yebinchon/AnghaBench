
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int REAL_VALUE_TYPE ;
typedef int HOST_WIDE_INT ;


 int ARG_POINTER_REGNUM ;
 scalar_t__ ARRAY_SIZE (int **) ;
 scalar_t__ BITS_PER_UNIT ;
 scalar_t__ BITS_PER_WORD ;
 scalar_t__ BImode ;
 scalar_t__ CCmode ;
 int CONST_DOUBLE_FROM_REAL_VALUE (int ,int) ;
 scalar_t__ DOUBLE_TYPE_SIZE ;
 int FIRST_PSEUDO_REGISTER ;
 int FRAME_POINTER_REGNUM ;
 int GEN_INT (int) ;
 int GET_CLASS_NARROWEST_MODE (int ) ;
 scalar_t__ GET_MODE_BITSIZE (int) ;
 scalar_t__ GET_MODE_CLASS (int) ;
 int GET_MODE_WIDER_MODE (int) ;
 int HARD_FRAME_POINTER_REGNUM ;
 int INIT_EXPANDERS ;
 unsigned int INVALID_REGNUM ;
 scalar_t__ MAX_MACHINE_MODE ;
 int MAX_SAVED_CONST_INT ;
 scalar_t__ MODE_CC ;
 int MODE_DECIMAL_FLOAT ;
 int MODE_FLOAT ;
 int MODE_INT ;
 int MODE_PARTIAL_INT ;
 int MODE_VECTOR_FLOAT ;
 int MODE_VECTOR_INT ;
 int PIC_OFFSET_TABLE_REGNUM ;
 int POINTER_SIZE ;
 int Pmode ;
 int RDIV_EXPR ;
 scalar_t__ REAL_EXP (int *) ;
 int REAL_VALUE_FROM_INT (int ,int,int,int) ;
 int RETURN_ADDRESS_POINTER_REGNUM ;
 int SET_REAL_EXP (int *,scalar_t__) ;
 int STACK_POINTER_REGNUM ;
 void* STATIC_CHAIN ;
 void* STATIC_CHAIN_INCOMING ;
 scalar_t__ STATIC_CHAIN_INCOMING_REGNUM ;
 scalar_t__ STATIC_CHAIN_REGNUM ;
 int STORE_FLAG_VALUE ;
 int VIRTUAL_CFA_REGNUM ;
 int VIRTUAL_INCOMING_ARGS_REGNUM ;
 int VIRTUAL_OUTGOING_ARGS_REGNUM ;
 int VIRTUAL_STACK_DYNAMIC_REGNUM ;
 int VIRTUAL_STACK_VARS_REGNUM ;
 int VOIDmode ;
 scalar_t__ arg_pointer_rtx ;
 int byte_mode ;
 int cc0_rtx ;
 int const0_rtx ;
 int const1_rtx ;
 void* const_double_htab ;
 int const_double_htab_eq ;
 int const_double_htab_hash ;
 void* const_int_htab ;
 int const_int_htab_eq ;
 int const_int_htab_hash ;
 int * const_int_rtx ;
 int ** const_tiny_rtx ;
 int const_true_rtx ;
 int dconst0 ;
 int dconst1 ;
 int dconst10 ;
 int dconst2 ;
 int dconst3 ;
 int dconste ;
 int dconsthalf ;
 int dconstm1 ;
 int dconstm2 ;
 int dconstpi ;
 int dconstthird ;
 void* frame_pointer_rtx ;
 int gen_const_vector (int,int) ;
 void* gen_raw_REG (int,int) ;
 int gen_rtx_CC0 (int) ;
 int gen_rtx_CONST_INT (int,int) ;
 int gen_rtx_PC (int) ;
 void* gen_rtx_REG (int,scalar_t__) ;
 int gen_rtx_raw_CONST_INT (int,int ) ;
 scalar_t__ hard_frame_pointer_rtx ;
 void* htab_create_ggc (int,int ,int ,int *) ;
 int init_reg_modes_once () ;
 void* mem_attrs_htab ;
 int mem_attrs_htab_eq ;
 int mem_attrs_htab_hash ;
 int mode_for_size (int ,scalar_t__,int ) ;
 int no_line_numbers ;
 int pc_rtx ;
 void* pic_offset_table_rtx ;
 int ptr_mode ;
 int real_arithmetic (int *,int ,int *,int *) ;
 int real_from_string (int *,char*) ;
 void* reg_attrs_htab ;
 int reg_attrs_htab_eq ;
 int reg_attrs_htab_hash ;
 int* reg_raw_mode ;
 void* return_address_pointer_rtx ;
 void* stack_pointer_rtx ;
 void* static_chain_incoming_rtx ;
 void* static_chain_rtx ;
 void** static_regno_reg_rtx ;
 void* virtual_cfa_rtx ;
 void* virtual_incoming_args_rtx ;
 void* virtual_outgoing_args_rtx ;
 void* virtual_stack_dynamic_rtx ;
 void* virtual_stack_vars_rtx ;
 int word_mode ;

void
init_emit_once (int line_numbers)
{
  int i;
  enum machine_mode mode;
  enum machine_mode double_mode;


  init_reg_modes_once ();



  const_int_htab = htab_create_ggc (37, const_int_htab_hash,
        const_int_htab_eq, ((void*)0));

  const_double_htab = htab_create_ggc (37, const_double_htab_hash,
           const_double_htab_eq, ((void*)0));

  mem_attrs_htab = htab_create_ggc (37, mem_attrs_htab_hash,
        mem_attrs_htab_eq, ((void*)0));
  reg_attrs_htab = htab_create_ggc (37, reg_attrs_htab_hash,
        reg_attrs_htab_eq, ((void*)0));

  no_line_numbers = ! line_numbers;



  byte_mode = VOIDmode;
  word_mode = VOIDmode;
  double_mode = VOIDmode;

  for (mode = GET_CLASS_NARROWEST_MODE (MODE_INT);
       mode != VOIDmode;
       mode = GET_MODE_WIDER_MODE (mode))
    {
      if (GET_MODE_BITSIZE (mode) == BITS_PER_UNIT
   && byte_mode == VOIDmode)
 byte_mode = mode;

      if (GET_MODE_BITSIZE (mode) == BITS_PER_WORD
   && word_mode == VOIDmode)
 word_mode = mode;
    }

  for (mode = GET_CLASS_NARROWEST_MODE (MODE_FLOAT);
       mode != VOIDmode;
       mode = GET_MODE_WIDER_MODE (mode))
    {
      if (GET_MODE_BITSIZE (mode) == DOUBLE_TYPE_SIZE
   && double_mode == VOIDmode)
 double_mode = mode;
    }

  ptr_mode = mode_for_size (POINTER_SIZE, GET_MODE_CLASS (Pmode), 0);





  pc_rtx = gen_rtx_PC (VOIDmode);
  cc0_rtx = gen_rtx_CC0 (VOIDmode);
  stack_pointer_rtx = gen_raw_REG (Pmode, STACK_POINTER_REGNUM);
  frame_pointer_rtx = gen_raw_REG (Pmode, FRAME_POINTER_REGNUM);
  if (hard_frame_pointer_rtx == 0)
    hard_frame_pointer_rtx = gen_raw_REG (Pmode,
       HARD_FRAME_POINTER_REGNUM);
  if (arg_pointer_rtx == 0)
    arg_pointer_rtx = gen_raw_REG (Pmode, ARG_POINTER_REGNUM);
  virtual_incoming_args_rtx =
    gen_raw_REG (Pmode, VIRTUAL_INCOMING_ARGS_REGNUM);
  virtual_stack_vars_rtx =
    gen_raw_REG (Pmode, VIRTUAL_STACK_VARS_REGNUM);
  virtual_stack_dynamic_rtx =
    gen_raw_REG (Pmode, VIRTUAL_STACK_DYNAMIC_REGNUM);
  virtual_outgoing_args_rtx =
    gen_raw_REG (Pmode, VIRTUAL_OUTGOING_ARGS_REGNUM);
  virtual_cfa_rtx = gen_raw_REG (Pmode, VIRTUAL_CFA_REGNUM);



  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
    static_regno_reg_rtx[i] = gen_raw_REG (reg_raw_mode[i], i);
  for (i = - MAX_SAVED_CONST_INT; i <= MAX_SAVED_CONST_INT; i++)
    const_int_rtx[i + MAX_SAVED_CONST_INT] =
      gen_rtx_raw_CONST_INT (VOIDmode, (HOST_WIDE_INT) i);

  if (STORE_FLAG_VALUE >= - MAX_SAVED_CONST_INT
      && STORE_FLAG_VALUE <= MAX_SAVED_CONST_INT)
    const_true_rtx = const_int_rtx[STORE_FLAG_VALUE + MAX_SAVED_CONST_INT];
  else
    const_true_rtx = gen_rtx_CONST_INT (VOIDmode, STORE_FLAG_VALUE);

  REAL_VALUE_FROM_INT (dconst0, 0, 0, double_mode);
  REAL_VALUE_FROM_INT (dconst1, 1, 0, double_mode);
  REAL_VALUE_FROM_INT (dconst2, 2, 0, double_mode);
  REAL_VALUE_FROM_INT (dconst3, 3, 0, double_mode);
  REAL_VALUE_FROM_INT (dconst10, 10, 0, double_mode);
  REAL_VALUE_FROM_INT (dconstm1, -1, -1, double_mode);
  REAL_VALUE_FROM_INT (dconstm2, -2, -1, double_mode);

  dconsthalf = dconst1;
  SET_REAL_EXP (&dconsthalf, REAL_EXP (&dconsthalf) - 1);

  real_arithmetic (&dconstthird, RDIV_EXPR, &dconst1, &dconst3);



  real_from_string (&dconstpi,
    "3.1415926535897932384626433832795028841971693993751058209749445923078");
  real_from_string (&dconste,
    "2.7182818284590452353602874713526624977572470936999595749669676277241");

  for (i = 0; i < (int) ARRAY_SIZE (const_tiny_rtx); i++)
    {
      REAL_VALUE_TYPE *r =
 (i == 0 ? &dconst0 : i == 1 ? &dconst1 : &dconst2);

      for (mode = GET_CLASS_NARROWEST_MODE (MODE_FLOAT);
    mode != VOIDmode;
    mode = GET_MODE_WIDER_MODE (mode))
 const_tiny_rtx[i][(int) mode] =
   CONST_DOUBLE_FROM_REAL_VALUE (*r, mode);

      for (mode = GET_CLASS_NARROWEST_MODE (MODE_DECIMAL_FLOAT);
    mode != VOIDmode;
    mode = GET_MODE_WIDER_MODE (mode))
 const_tiny_rtx[i][(int) mode] =
   CONST_DOUBLE_FROM_REAL_VALUE (*r, mode);

      const_tiny_rtx[i][(int) VOIDmode] = GEN_INT (i);

      for (mode = GET_CLASS_NARROWEST_MODE (MODE_INT);
    mode != VOIDmode;
    mode = GET_MODE_WIDER_MODE (mode))
 const_tiny_rtx[i][(int) mode] = GEN_INT (i);

      for (mode = GET_CLASS_NARROWEST_MODE (MODE_PARTIAL_INT);
    mode != VOIDmode;
    mode = GET_MODE_WIDER_MODE (mode))
 const_tiny_rtx[i][(int) mode] = GEN_INT (i);
    }

  for (mode = GET_CLASS_NARROWEST_MODE (MODE_VECTOR_INT);
       mode != VOIDmode;
       mode = GET_MODE_WIDER_MODE (mode))
    {
      const_tiny_rtx[0][(int) mode] = gen_const_vector (mode, 0);
      const_tiny_rtx[1][(int) mode] = gen_const_vector (mode, 1);
    }

  for (mode = GET_CLASS_NARROWEST_MODE (MODE_VECTOR_FLOAT);
       mode != VOIDmode;
       mode = GET_MODE_WIDER_MODE (mode))
    {
      const_tiny_rtx[0][(int) mode] = gen_const_vector (mode, 0);
      const_tiny_rtx[1][(int) mode] = gen_const_vector (mode, 1);
    }

  for (i = (int) CCmode; i < (int) MAX_MACHINE_MODE; ++i)
    if (GET_MODE_CLASS ((enum machine_mode) i) == MODE_CC)
      const_tiny_rtx[0][i] = const0_rtx;

  const_tiny_rtx[0][(int) BImode] = const0_rtx;
  if (STORE_FLAG_VALUE == 1)
    const_tiny_rtx[1][(int) BImode] = const1_rtx;
  if ((unsigned) PIC_OFFSET_TABLE_REGNUM != INVALID_REGNUM)
    pic_offset_table_rtx = gen_raw_REG (Pmode, PIC_OFFSET_TABLE_REGNUM);
}
