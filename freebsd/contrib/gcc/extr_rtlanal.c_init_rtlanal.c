
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* GET_RTX_FORMAT (int) ;
 int NUM_RTX_CODE ;
 int init_num_sign_bit_copies_in_rep () ;
 int* non_rtx_starting_operands ;
 char* strpbrk (char const*,char*) ;

void
init_rtlanal (void)
{
  int i;
  for (i = 0; i < NUM_RTX_CODE; i++)
    {
      const char *format = GET_RTX_FORMAT (i);
      const char *first = strpbrk (format, "eEV");
      non_rtx_starting_operands[i] = first ? first - format : -1;
    }

  init_num_sign_bit_copies_in_rep ();
}
