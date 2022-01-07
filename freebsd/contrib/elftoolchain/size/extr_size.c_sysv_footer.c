
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int putchar (char) ;
 int radix ;
 int tbl_append () ;
 int tbl_flush () ;
 int tbl_print (char*,int ) ;
 int tbl_print_num (int ,int ,int) ;
 int text_size_total ;

__attribute__((used)) static void
sysv_footer(void)
{
 tbl_append();
 tbl_print("Total", 0);
 tbl_print_num(text_size_total, radix, 1);
 tbl_flush();
 putchar('\n');
}
