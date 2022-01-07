
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ RADIX_DECIMAL ;
 scalar_t__ RADIX_HEX ;
 scalar_t__ RADIX_OCTAL ;
 scalar_t__ bss_size_total ;
 scalar_t__ data_size_total ;
 scalar_t__ radix ;
 int tbl_append () ;
 int tbl_print_num (scalar_t__,scalar_t__,int) ;
 scalar_t__ text_size_total ;

__attribute__((used)) static void
berkeley_totals(void)
{
 uint64_t grand_total;

 grand_total = text_size_total + data_size_total + bss_size_total;
 tbl_append();
 tbl_print_num(text_size_total, radix, 0);
 tbl_print_num(data_size_total, radix, 1);
 tbl_print_num(bss_size_total, radix, 2);
 if (radix == RADIX_OCTAL)
  tbl_print_num(grand_total, RADIX_OCTAL, 3);
 else
  tbl_print_num(grand_total, RADIX_DECIMAL, 3);
 tbl_print_num(grand_total, RADIX_HEX, 4);
}
