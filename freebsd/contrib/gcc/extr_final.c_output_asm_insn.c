
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int ASM_OUTPUT_OPCODE (int ,char const*) ;
 int CONSTANT_ADDRESS_P (int ) ;
 int CONST_INT ;
 int GET_CODE (int ) ;
 char* HOST_WIDE_INT_PRINT_DEC ;
 int INTVAL (int ) ;
 int ISALPHA (char const) ;
 int ISDIGIT (char const) ;
 int MAX_RECOG_OPERANDS ;
 int NULL_RTX ;
 int PRINT_OPERAND_PUNCT_VALID_P (unsigned char) ;
 int asm_out_file ;
 int dialect_number ;
 scalar_t__ flag_print_asm_name ;
 scalar_t__ flag_verbose_asm ;
 int fprintf (int ,char*,int) ;
 int insn_counter ;
 unsigned long insn_noperands ;
 int memset (char*,int ,int) ;
 int output_addr_const (int ,int ) ;
 int output_address (int ) ;
 int output_asm_label (int ) ;
 int output_asm_name () ;
 int output_asm_operand_names (int *,int*,int) ;
 int output_operand (int ,int) ;
 int output_operand_lossage (char*) ;
 int putc (char,int ) ;
 unsigned long strtoul (char const*,char**,int) ;
 int this_is_asm_operands ;

void
output_asm_insn (const char *template, rtx *operands)
{
  const char *p;
  int c;



  int oporder[MAX_RECOG_OPERANDS];
  char opoutput[MAX_RECOG_OPERANDS];
  int ops = 0;



  if (*template == 0)
    return;

  memset (opoutput, 0, sizeof opoutput);
  p = template;
  putc ('\t', asm_out_file);





  while ((c = *p++))
    switch (c)
      {
      case '\n':
 if (flag_verbose_asm)
   output_asm_operand_names (operands, oporder, ops);
 if (flag_print_asm_name)
   output_asm_name ();

 ops = 0;
 memset (opoutput, 0, sizeof opoutput);

 putc (c, asm_out_file);
 break;
      case '%':

 if (*p == '%')
   {
     p++;
     putc (c, asm_out_file);
   }



 else if (*p == '=')
   {
     p++;
     fprintf (asm_out_file, "%d", insn_counter);
   }





 else if (ISALPHA (*p))
   {
     int letter = *p++;
     unsigned long opnum;
     char *endptr;

     opnum = strtoul (p, &endptr, 10);

     if (endptr == p)
       output_operand_lossage ("operand number missing "
          "after %%-letter");
     else if (this_is_asm_operands && opnum >= insn_noperands)
       output_operand_lossage ("operand number out of range");
     else if (letter == 'l')
       output_asm_label (operands[opnum]);
     else if (letter == 'a')
       output_address (operands[opnum]);
     else if (letter == 'c')
       {
  if (CONSTANT_ADDRESS_P (operands[opnum]))
    output_addr_const (asm_out_file, operands[opnum]);
  else
    output_operand (operands[opnum], 'c');
       }
     else if (letter == 'n')
       {
  if (GET_CODE (operands[opnum]) == CONST_INT)
    fprintf (asm_out_file, HOST_WIDE_INT_PRINT_DEC,
      - INTVAL (operands[opnum]));
  else
    {
      putc ('-', asm_out_file);
      output_addr_const (asm_out_file, operands[opnum]);
    }
       }
     else
       output_operand (operands[opnum], letter);

     if (!opoutput[opnum])
       oporder[ops++] = opnum;
     opoutput[opnum] = 1;

     p = endptr;
     c = *p;
   }

 else if (ISDIGIT (*p))
   {
     unsigned long opnum;
     char *endptr;

     opnum = strtoul (p, &endptr, 10);
     if (this_is_asm_operands && opnum >= insn_noperands)
       output_operand_lossage ("operand number out of range");
     else
       output_operand (operands[opnum], 0);

     if (!opoutput[opnum])
       oporder[ops++] = opnum;
     opoutput[opnum] = 1;

     p = endptr;
     c = *p;
   }







 else
   output_operand_lossage ("invalid %%-code");
 break;

      default:
 putc (c, asm_out_file);
      }


  if (flag_verbose_asm)
    output_asm_operand_names (operands, oporder, ops);
  if (flag_print_asm_name)
    output_asm_name ();

  putc ('\n', asm_out_file);
}
