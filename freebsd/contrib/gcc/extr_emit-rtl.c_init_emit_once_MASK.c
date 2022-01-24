#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;
typedef  int /*<<< orphan*/  HOST_WIDE_INT ;

/* Variables and functions */
 int ARG_POINTER_REGNUM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ **) ; 
 scalar_t__ BITS_PER_UNIT ; 
 scalar_t__ BITS_PER_WORD ; 
 scalar_t__ BImode ; 
 scalar_t__ CCmode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ DOUBLE_TYPE_SIZE ; 
 int FIRST_PSEUDO_REGISTER ; 
 int FRAME_POINTER_REGNUM ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int HARD_FRAME_POINTER_REGNUM ; 
 int /*<<< orphan*/  INIT_EXPANDERS ; 
 unsigned int INVALID_REGNUM ; 
 scalar_t__ MAX_MACHINE_MODE ; 
 int MAX_SAVED_CONST_INT ; 
 scalar_t__ MODE_CC ; 
 int /*<<< orphan*/  MODE_DECIMAL_FLOAT ; 
 int /*<<< orphan*/  MODE_FLOAT ; 
 int /*<<< orphan*/  MODE_INT ; 
 int /*<<< orphan*/  MODE_PARTIAL_INT ; 
 int /*<<< orphan*/  MODE_VECTOR_FLOAT ; 
 int /*<<< orphan*/  MODE_VECTOR_INT ; 
 int PIC_OFFSET_TABLE_REGNUM ; 
 int /*<<< orphan*/  POINTER_SIZE ; 
 int Pmode ; 
 int /*<<< orphan*/  RDIV_EXPR ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int,int) ; 
 int RETURN_ADDRESS_POINTER_REGNUM ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
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
 int /*<<< orphan*/  cc0_rtx ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  const1_rtx ; 
 void* const_double_htab ; 
 int /*<<< orphan*/  const_double_htab_eq ; 
 int /*<<< orphan*/  const_double_htab_hash ; 
 void* const_int_htab ; 
 int /*<<< orphan*/  const_int_htab_eq ; 
 int /*<<< orphan*/  const_int_htab_hash ; 
 int /*<<< orphan*/ * const_int_rtx ; 
 int /*<<< orphan*/ ** const_tiny_rtx ; 
 int /*<<< orphan*/  const_true_rtx ; 
 int /*<<< orphan*/  dconst0 ; 
 int /*<<< orphan*/  dconst1 ; 
 int /*<<< orphan*/  dconst10 ; 
 int /*<<< orphan*/  dconst2 ; 
 int /*<<< orphan*/  dconst3 ; 
 int /*<<< orphan*/  dconste ; 
 int /*<<< orphan*/  dconsthalf ; 
 int /*<<< orphan*/  dconstm1 ; 
 int /*<<< orphan*/  dconstm2 ; 
 int /*<<< orphan*/  dconstpi ; 
 int /*<<< orphan*/  dconstthird ; 
 void* frame_pointer_rtx ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 void* FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 void* FUNC15 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ hard_frame_pointer_rtx ; 
 void* FUNC17 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 void* mem_attrs_htab ; 
 int /*<<< orphan*/  mem_attrs_htab_eq ; 
 int /*<<< orphan*/  mem_attrs_htab_hash ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int no_line_numbers ; 
 int /*<<< orphan*/  pc_rtx ; 
 void* pic_offset_table_rtx ; 
 int /*<<< orphan*/  ptr_mode ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char*) ; 
 void* reg_attrs_htab ; 
 int /*<<< orphan*/  reg_attrs_htab_eq ; 
 int /*<<< orphan*/  reg_attrs_htab_hash ; 
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
FUNC22 (int line_numbers)
{
  int i;
  enum machine_mode mode;
  enum machine_mode double_mode;

  /* We need reg_raw_mode, so initialize the modes now.  */
  FUNC18 ();

  /* Initialize the CONST_INT, CONST_DOUBLE, and memory attribute hash
     tables.  */
  const_int_htab = FUNC17 (37, const_int_htab_hash,
				    const_int_htab_eq, NULL);

  const_double_htab = FUNC17 (37, const_double_htab_hash,
				       const_double_htab_eq, NULL);

  mem_attrs_htab = FUNC17 (37, mem_attrs_htab_hash,
				    mem_attrs_htab_eq, NULL);
  reg_attrs_htab = FUNC17 (37, reg_attrs_htab_hash,
				    reg_attrs_htab_eq, NULL);

  no_line_numbers = ! line_numbers;

  /* Compute the word and byte modes.  */

  byte_mode = VOIDmode;
  word_mode = VOIDmode;
  double_mode = VOIDmode;

  for (mode = FUNC3 (MODE_INT);
       mode != VOIDmode;
       mode = FUNC6 (mode))
    {
      if (FUNC4 (mode) == BITS_PER_UNIT
	  && byte_mode == VOIDmode)
	byte_mode = mode;

      if (FUNC4 (mode) == BITS_PER_WORD
	  && word_mode == VOIDmode)
	word_mode = mode;
    }

  for (mode = FUNC3 (MODE_FLOAT);
       mode != VOIDmode;
       mode = FUNC6 (mode))
    {
      if (FUNC4 (mode) == DOUBLE_TYPE_SIZE
	  && double_mode == VOIDmode)
	double_mode = mode;
    }

  ptr_mode = FUNC19 (POINTER_SIZE, FUNC5 (Pmode), 0);

  /* Assign register numbers to the globally defined register rtx.
     This must be done at runtime because the register number field
     is in a union and some compilers can't initialize unions.  */

  pc_rtx = FUNC14 (VOIDmode);
  cc0_rtx = FUNC12 (VOIDmode);
  stack_pointer_rtx = FUNC11 (Pmode, STACK_POINTER_REGNUM);
  frame_pointer_rtx = FUNC11 (Pmode, FRAME_POINTER_REGNUM);
  if (hard_frame_pointer_rtx == 0)
    hard_frame_pointer_rtx = FUNC11 (Pmode,
					  HARD_FRAME_POINTER_REGNUM);
  if (arg_pointer_rtx == 0)
    arg_pointer_rtx = FUNC11 (Pmode, ARG_POINTER_REGNUM);
  virtual_incoming_args_rtx =
    FUNC11 (Pmode, VIRTUAL_INCOMING_ARGS_REGNUM);
  virtual_stack_vars_rtx =
    FUNC11 (Pmode, VIRTUAL_STACK_VARS_REGNUM);
  virtual_stack_dynamic_rtx =
    FUNC11 (Pmode, VIRTUAL_STACK_DYNAMIC_REGNUM);
  virtual_outgoing_args_rtx =
    FUNC11 (Pmode, VIRTUAL_OUTGOING_ARGS_REGNUM);
  virtual_cfa_rtx = FUNC11 (Pmode, VIRTUAL_CFA_REGNUM);

  /* Initialize RTL for commonly used hard registers.  These are
     copied into regno_reg_rtx as we begin to compile each function.  */
  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
    static_regno_reg_rtx[i] = FUNC11 (reg_raw_mode[i], i);

#ifdef INIT_EXPANDERS
  /* This is to initialize {init|mark|free}_machine_status before the first
     call to push_function_context_to.  This is needed by the Chill front
     end which calls push_function_context_to before the first call to
     init_function_start.  */
  INIT_EXPANDERS;
#endif

  /* Create the unique rtx's for certain rtx codes and operand values.  */

  /* Don't use gen_rtx_CONST_INT here since gen_rtx_CONST_INT in this case
     tries to use these variables.  */
  for (i = - MAX_SAVED_CONST_INT; i <= MAX_SAVED_CONST_INT; i++)
    const_int_rtx[i + MAX_SAVED_CONST_INT] =
      FUNC16 (VOIDmode, (HOST_WIDE_INT) i);

  if (STORE_FLAG_VALUE >= - MAX_SAVED_CONST_INT
      && STORE_FLAG_VALUE <= MAX_SAVED_CONST_INT)
    const_true_rtx = const_int_rtx[STORE_FLAG_VALUE + MAX_SAVED_CONST_INT];
  else
    const_true_rtx = FUNC13 (VOIDmode, STORE_FLAG_VALUE);

  FUNC8 (dconst0,   0,  0, double_mode);
  FUNC8 (dconst1,   1,  0, double_mode);
  FUNC8 (dconst2,   2,  0, double_mode);
  FUNC8 (dconst3,   3,  0, double_mode);
  FUNC8 (dconst10, 10,  0, double_mode);
  FUNC8 (dconstm1, -1, -1, double_mode);
  FUNC8 (dconstm2, -2, -1, double_mode);

  dconsthalf = dconst1;
  FUNC9 (&dconsthalf, FUNC7 (&dconsthalf) - 1);

  FUNC20 (&dconstthird, RDIV_EXPR, &dconst1, &dconst3);

  /* Initialize mathematical constants for constant folding builtins.
     These constants need to be given to at least 160 bits precision.  */
  FUNC21 (&dconstpi,
    "3.1415926535897932384626433832795028841971693993751058209749445923078");
  FUNC21 (&dconste,
    "2.7182818284590452353602874713526624977572470936999595749669676277241");

  for (i = 0; i < (int) FUNC0 (const_tiny_rtx); i++)
    {
      REAL_VALUE_TYPE *r =
	(i == 0 ? &dconst0 : i == 1 ? &dconst1 : &dconst2);

      for (mode = FUNC3 (MODE_FLOAT);
	   mode != VOIDmode;
	   mode = FUNC6 (mode))
	const_tiny_rtx[i][(int) mode] =
	  FUNC1 (*r, mode);

      for (mode = FUNC3 (MODE_DECIMAL_FLOAT);
	   mode != VOIDmode;
	   mode = FUNC6 (mode))
	const_tiny_rtx[i][(int) mode] =
	  FUNC1 (*r, mode);

      const_tiny_rtx[i][(int) VOIDmode] = FUNC2 (i);

      for (mode = FUNC3 (MODE_INT);
	   mode != VOIDmode;
	   mode = FUNC6 (mode))
	const_tiny_rtx[i][(int) mode] = FUNC2 (i);

      for (mode = FUNC3 (MODE_PARTIAL_INT);
	   mode != VOIDmode;
	   mode = FUNC6 (mode))
	const_tiny_rtx[i][(int) mode] = FUNC2 (i);
    }

  for (mode = FUNC3 (MODE_VECTOR_INT);
       mode != VOIDmode;
       mode = FUNC6 (mode))
    {
      const_tiny_rtx[0][(int) mode] = FUNC10 (mode, 0);
      const_tiny_rtx[1][(int) mode] = FUNC10 (mode, 1);
    }

  for (mode = FUNC3 (MODE_VECTOR_FLOAT);
       mode != VOIDmode;
       mode = FUNC6 (mode))
    {
      const_tiny_rtx[0][(int) mode] = FUNC10 (mode, 0);
      const_tiny_rtx[1][(int) mode] = FUNC10 (mode, 1);
    }

  for (i = (int) CCmode; i < (int) MAX_MACHINE_MODE; ++i)
    if (FUNC5 ((enum machine_mode) i) == MODE_CC)
      const_tiny_rtx[0][i] = const0_rtx;

  const_tiny_rtx[0][(int) BImode] = const0_rtx;
  if (STORE_FLAG_VALUE == 1)
    const_tiny_rtx[1][(int) BImode] = const1_rtx;

#ifdef RETURN_ADDRESS_POINTER_REGNUM
  return_address_pointer_rtx
    = gen_raw_REG (Pmode, RETURN_ADDRESS_POINTER_REGNUM);
#endif

#ifdef STATIC_CHAIN_REGNUM
  static_chain_rtx = gen_rtx_REG (Pmode, STATIC_CHAIN_REGNUM);

#ifdef STATIC_CHAIN_INCOMING_REGNUM
  if (STATIC_CHAIN_INCOMING_REGNUM != STATIC_CHAIN_REGNUM)
    static_chain_incoming_rtx
      = gen_rtx_REG (Pmode, STATIC_CHAIN_INCOMING_REGNUM);
  else
#endif
    static_chain_incoming_rtx = static_chain_rtx;
#endif

#ifdef STATIC_CHAIN
  static_chain_rtx = STATIC_CHAIN;

#ifdef STATIC_CHAIN_INCOMING
  static_chain_incoming_rtx = STATIC_CHAIN_INCOMING;
#else
  static_chain_incoming_rtx = static_chain_rtx;
#endif
#endif

  if ((unsigned) PIC_OFFSET_TABLE_REGNUM != INVALID_REGNUM)
    pic_offset_table_rtx = FUNC11 (Pmode, PIC_OFFSET_TABLE_REGNUM);
}