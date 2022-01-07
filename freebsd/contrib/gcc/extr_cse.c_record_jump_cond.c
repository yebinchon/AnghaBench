
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_elt {scalar_t__ first_same_value; int in_memory; } ;
struct qty_table_elem {int comparison_code; int comparison_qty; scalar_t__ comparison_const; } ;
typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CONSTANT_P (scalar_t__) ;
 int EQ ;
 scalar_t__ FLOAT_MODE_P (int) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 scalar_t__ GET_MODE_SIZE (int) ;
 unsigned int HASH (scalar_t__,int) ;
 int NE ;
 scalar_t__ NULL_RTX ;
 int REGNO (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 void* REG_QTY (int ) ;
 scalar_t__ SUBREG ;
 scalar_t__ SUBREG_REG (scalar_t__) ;
 scalar_t__ do_not_record ;
 scalar_t__ equiv_constant (scalar_t__) ;
 int hash_arg_in_memory ;
 struct table_elt* insert (scalar_t__,int *,unsigned int,int) ;
 scalar_t__ insert_regs (scalar_t__,int *,int ) ;
 struct table_elt* lookup (scalar_t__,unsigned int,int) ;
 int merge_equiv_classes (struct table_elt*,struct table_elt*) ;
 struct qty_table_elem* qty_table ;
 scalar_t__ record_jump_cond_subreg (int,scalar_t__) ;
 int rehash_using_reg (scalar_t__) ;
 scalar_t__ rtx_equal_p (scalar_t__,scalar_t__) ;
 scalar_t__ subreg_lowpart_p (scalar_t__) ;

__attribute__((used)) static void
record_jump_cond (enum rtx_code code, enum machine_mode mode, rtx op0,
    rtx op1, int reversed_nonequality)
{
  unsigned op0_hash, op1_hash;
  int op0_in_memory, op1_in_memory;
  struct table_elt *op0_elt, *op1_elt;







  if (code == EQ && GET_CODE (op0) == SUBREG
      && (GET_MODE_SIZE (GET_MODE (op0))
   > GET_MODE_SIZE (GET_MODE (SUBREG_REG (op0)))))
    {
      enum machine_mode inner_mode = GET_MODE (SUBREG_REG (op0));
      rtx tem = record_jump_cond_subreg (inner_mode, op1);
      if (tem)
 record_jump_cond (code, mode, SUBREG_REG (op0), tem,
     reversed_nonequality);
    }

  if (code == EQ && GET_CODE (op1) == SUBREG
      && (GET_MODE_SIZE (GET_MODE (op1))
   > GET_MODE_SIZE (GET_MODE (SUBREG_REG (op1)))))
    {
      enum machine_mode inner_mode = GET_MODE (SUBREG_REG (op1));
      rtx tem = record_jump_cond_subreg (inner_mode, op0);
      if (tem)
 record_jump_cond (code, mode, SUBREG_REG (op1), tem,
     reversed_nonequality);
    }
  if (code == NE && GET_CODE (op0) == SUBREG
      && subreg_lowpart_p (op0)
      && (GET_MODE_SIZE (GET_MODE (op0))
   < GET_MODE_SIZE (GET_MODE (SUBREG_REG (op0)))))
    {
      enum machine_mode inner_mode = GET_MODE (SUBREG_REG (op0));
      rtx tem = record_jump_cond_subreg (inner_mode, op1);
      if (tem)
 record_jump_cond (code, mode, SUBREG_REG (op0), tem,
     reversed_nonequality);
    }

  if (code == NE && GET_CODE (op1) == SUBREG
      && subreg_lowpart_p (op1)
      && (GET_MODE_SIZE (GET_MODE (op1))
   < GET_MODE_SIZE (GET_MODE (SUBREG_REG (op1)))))
    {
      enum machine_mode inner_mode = GET_MODE (SUBREG_REG (op1));
      rtx tem = record_jump_cond_subreg (inner_mode, op0);
      if (tem)
 record_jump_cond (code, mode, SUBREG_REG (op1), tem,
     reversed_nonequality);
    }



  do_not_record = 0;
  hash_arg_in_memory = 0;
  op0_hash = HASH (op0, mode);
  op0_in_memory = hash_arg_in_memory;

  if (do_not_record)
    return;

  do_not_record = 0;
  hash_arg_in_memory = 0;
  op1_hash = HASH (op1, mode);
  op1_in_memory = hash_arg_in_memory;

  if (do_not_record)
    return;


  op0_elt = lookup (op0, op0_hash, mode);
  op1_elt = lookup (op1, op1_hash, mode);



  if ((op0_elt != 0 && op1_elt != 0
       && op0_elt->first_same_value == op1_elt->first_same_value)
      || op0 == op1 || rtx_equal_p (op0, op1))
    return;







  if (code != EQ || FLOAT_MODE_P (GET_MODE (op0)))
    {
      struct qty_table_elem *ent;
      int qty;





      if (!REG_P (op1))
 op1 = equiv_constant (op1);

      if ((reversed_nonequality && FLOAT_MODE_P (mode))
   || !REG_P (op0) || op1 == 0)
 return;



      if (op0_elt == 0)
 {
   if (insert_regs (op0, ((void*)0), 0))
     {
       rehash_using_reg (op0);
       op0_hash = HASH (op0, mode);




       if (! CONSTANT_P (op1))
  op1_hash = HASH (op1,mode);
     }

   op0_elt = insert (op0, ((void*)0), op0_hash, mode);
   op0_elt->in_memory = op0_in_memory;
 }

      qty = REG_QTY (REGNO (op0));
      ent = &qty_table[qty];

      ent->comparison_code = code;
      if (REG_P (op1))
 {

   op1_elt = lookup (op1, op1_hash, mode);


   if (op1_elt == 0)
     {
       if (insert_regs (op1, ((void*)0), 0))
  {
    rehash_using_reg (op1);
    op1_hash = HASH (op1, mode);
  }

       op1_elt = insert (op1, ((void*)0), op1_hash, mode);
       op1_elt->in_memory = op1_in_memory;
     }

   ent->comparison_const = NULL_RTX;
   ent->comparison_qty = REG_QTY (REGNO (op1));
 }
      else
 {
   ent->comparison_const = op1;
   ent->comparison_qty = -1;
 }

      return;
    }




  if (op0_elt == 0)
    {
      if (insert_regs (op0, ((void*)0), 0))
 {
   rehash_using_reg (op0);
   op0_hash = HASH (op0, mode);
 }

      op0_elt = insert (op0, ((void*)0), op0_hash, mode);
      op0_elt->in_memory = op0_in_memory;
    }

  if (op1_elt == 0)
    {
      if (insert_regs (op1, ((void*)0), 0))
 {
   rehash_using_reg (op1);
   op1_hash = HASH (op1, mode);
 }

      op1_elt = insert (op1, ((void*)0), op1_hash, mode);
      op1_elt->in_memory = op1_in_memory;
    }

  merge_equiv_classes (op0_elt, op1_elt);
}
