
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int ASM_OUTPUT_ALIGN (int ,int) ;
 int BITS_PER_UNIT ;
 int FUNCTION_BOUNDARY ;
 scalar_t__ NULL_RTX ;
 scalar_t__ XEXP (scalar_t__,int) ;
 int asm_out_file ;
 int current_function_section () ;
 int floor_log2 (int) ;
 scalar_t__ sparc_addr_diff_list ;
 scalar_t__ sparc_addr_list ;
 int sparc_output_addr_diff_vec (scalar_t__) ;
 int sparc_output_addr_vec (scalar_t__) ;
 int switch_to_section (int ) ;

__attribute__((used)) static void
sparc_output_deferred_case_vectors (void)
{
  rtx t;
  int align;

  if (sparc_addr_list == NULL_RTX
      && sparc_addr_diff_list == NULL_RTX)
    return;


  switch_to_section (current_function_section ());

  align = floor_log2 (FUNCTION_BOUNDARY / BITS_PER_UNIT);
  if (align > 0)
    ASM_OUTPUT_ALIGN (asm_out_file, align);

  for (t = sparc_addr_list; t ; t = XEXP (t, 1))
    sparc_output_addr_vec (XEXP (t, 0));
  for (t = sparc_addr_diff_list; t ; t = XEXP (t, 1))
    sparc_output_addr_diff_vec (XEXP (t, 0));

  sparc_addr_list = sparc_addr_diff_list = NULL_RTX;
}
