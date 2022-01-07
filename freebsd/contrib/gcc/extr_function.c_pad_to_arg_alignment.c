
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* tree ;
struct args_size {scalar_t__ constant; void* var; } ;
typedef scalar_t__ HOST_WIDE_INT ;


 void* ARGS_SIZE_TREE (struct args_size) ;
 int BITS_PER_UNIT ;
 int CEIL_ROUND (scalar_t__,int) ;
 scalar_t__ FLOOR_ROUND (scalar_t__,int) ;
 int MINUS_EXPR ;
 void* NULL_TREE ;
 int PARM_BOUNDARY ;
 int PLUS_EXPR ;
 scalar_t__ SPARC_STACK_BOUNDARY_HACK ;
 int STACK_BOUNDARY ;
 scalar_t__ STACK_POINTER_OFFSET ;
 void* round_down (void*,int) ;
 void* round_up (void*,int) ;
 void* size_binop (int ,void*,void*) ;
 void* ssize_int (scalar_t__) ;

__attribute__((used)) static void
pad_to_arg_alignment (struct args_size *offset_ptr, int boundary,
        struct args_size *alignment_pad)
{
  tree save_var = NULL_TREE;
  HOST_WIDE_INT save_constant = 0;
  int boundary_in_bytes = boundary / BITS_PER_UNIT;
  HOST_WIDE_INT sp_offset = STACK_POINTER_OFFSET;
  if (boundary > PARM_BOUNDARY && boundary > STACK_BOUNDARY)
    {
      save_var = offset_ptr->var;
      save_constant = offset_ptr->constant;
    }

  alignment_pad->var = NULL_TREE;
  alignment_pad->constant = 0;

  if (boundary > BITS_PER_UNIT)
    {
      if (offset_ptr->var)
 {
   tree sp_offset_tree = ssize_int (sp_offset);
   tree offset = size_binop (PLUS_EXPR,
        ARGS_SIZE_TREE (*offset_ptr),
        sp_offset_tree);



   tree rounded = round_up (offset, boundary / BITS_PER_UNIT);


   offset_ptr->var = size_binop (MINUS_EXPR, rounded, sp_offset_tree);

   offset_ptr->constant = 0;
   if (boundary > PARM_BOUNDARY && boundary > STACK_BOUNDARY)
     alignment_pad->var = size_binop (MINUS_EXPR, offset_ptr->var,
          save_var);
 }
      else
 {
   offset_ptr->constant = -sp_offset +



     CEIL_ROUND (offset_ptr->constant + sp_offset, boundary_in_bytes);

     if (boundary > PARM_BOUNDARY && boundary > STACK_BOUNDARY)
       alignment_pad->constant = offset_ptr->constant - save_constant;
 }
    }
}
